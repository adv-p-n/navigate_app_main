import 'package:flutter/material.dart';
import 'package:navigate_app_main/Graph/f2_graph.dart';
import 'package:navigate_app_main/Utils/build_Dotted_Path.dart';
import 'package:navigate_app_main/views/search_view.dart';
import 'package:navigate_app_main/waypoints/wayponts.dart';
import 'package:navigate_app_main/Utils/error_dialog_builder.dart';
import 'package:navigate_app_main/wifi/wifi_mac_addresses.dart';
import 'package:navigate_app_main/wifi/wifi_scanner.dart';
import 'package:wifi_scan/wifi_scan.dart';
import 'dart:developer' as dev show log;

//import 'package:navigate_app_main/wifi/wifi_scanner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Waypoint? startWaypoint;
  Waypoint? endWaypoint;
  List<Waypoint> path = [];

  int selectedFloorIndex = 0;
  List<String> floorImages = [
    'assets/Images/floor0_amr.png',
    'assets/Images/floor1_amr.png',
    'assets/Images/floor2_amr.png',
    'assets/Images/floor3_amr.png',
  ];

  void onFloorSelected(int? index) {
    if (index != null) {
      setState(() {
        selectedFloorIndex = index;
      });
    }
  }

  List<Waypoint>? findShortestPath() {
    if (startWaypoint != null && endWaypoint != null) {
      path = graph.shortestPath(startWaypoint!, endWaypoint!);
    }
    for (Waypoint waypoint in path) {
      dev.log(waypoint.name);
    }
    return path;
  }

  @override
  Widget build(BuildContext context) {
    String selectedFloorImage = floorImages[selectedFloorIndex];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigate"),
        backgroundColor: Colors.blueGrey[200],
        actions: [
          IconButton(
            onPressed: () async {
              final result = await Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SearchPage()));
              if (result != null) {
                setState(() {
                  startWaypoint = result['start'];
                  endWaypoint = result['end'];
                });
                findShortestPath();
                // if (path.isEmpty) dev.log("empty");
                // if (path.isNotEmpty) dev.log("NOT empty");
                // dev.log(startWaypoint?.name ?? "empty");
                // dev.log(endWaypoint?.name ?? "empty");
              }
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
              onPressed: () async {
                //await _addSelectedWifiToTable();
                try {
                  String prediction = await getRoom();
                  dev.log(prediction);
                  // Do something with the prediction
                } catch (e) {
                  print('Error: $e');
                  // Handle the error gracefully
                }
              },
              icon: const Icon(Icons.smart_button_rounded))
        ],
      ),
      body: Center(
        child: InteractiveViewer(
          boundaryMargin: const EdgeInsets.all(20),
          minScale: 1.0,
          maxScale: 4.0,
          child: Stack(
            children: [
              // Map image
              Image.asset(
                selectedFloorImage,
                fit: BoxFit.fill,
              ),

              buildDottedPath(path, selectedFloorIndex + 1),

              //TO DISPALY ALL WAYPOINTS
              for (var waypoint in waypoints)
                if (waypoint.floor == selectedFloorIndex)
                  Positioned(
                    left: waypoint.posX + 5,
                    top: waypoint.posY + 10,
                    child: GestureDetector(
                      onTap: () {
                        // Handle waypoint tap
                        print('Waypoint ${waypoint.name} tapped');
                      },
                      child: const Icon(
                        Icons.location_on,
                        color: Colors.red,
                        size: 15,
                      ),
                    ),
                  ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Show a dialog to select the floor
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Select Floor',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                content: SizedBox(
                  height: MediaQuery.of(context).size.height *
                      0.25, // Adjust height as needed
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      floorImages.length,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedFloorIndex = index;
                          });
                          Navigator.of(context).pop(); // Close the AlertDialog
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Floor ${index}',
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
        child: const Icon(Icons.layers),
      ),
    );
  }

  List<WiFiAccessPoint> accessPoints = <WiFiAccessPoint>[];
  List<WiFiAccessPoint> selectedAccessPoints = [];
  List<Map<String, dynamic>> rowData = [];
  List<String> macIdInTable = finalMac;
  bool shouldCheckCan = true;

  Future<void> startScan(BuildContext context) async {
    if (shouldCheckCan) {
      final can = await WiFiScan.instance.canStartScan();
      // if can-not, then show error
      if (can != CanStartScan.yes) {
        return;
      }
    }

    // call startScan API
    await WiFiScan.instance.startScan();
    // reset access points.
    setState(() => accessPoints = <WiFiAccessPoint>[]);
    await _getScannedResults(context);
  }

  Future<bool> _canGetScannedResults(BuildContext context) async {
    if (shouldCheckCan) {
      // check if can-getScannedResults
      final can = await WiFiScan.instance.canGetScannedResults();
      // if can-not, then show error
      if (can != CanGetScannedResults.yes) {
        //if (mounted) kShowSnackBar(context, "Cannot get scanned results: $can");
        accessPoints = <WiFiAccessPoint>[];
        return false;
      }
    }
    return true;
  }

  Future<void> _getScannedResults(BuildContext context) async {
    //Fluttertoast.showToast(msg: 'Getting Scan results');
    if (await _canGetScannedResults(context)) {
      // get scanned results
      final results = await WiFiScan.instance.getScannedResults();
      setState(() {
        accessPoints = results;
      });
      //_addSelectedWifiToTable();

      //Fluttertoast.showToast(msg: 'Result Updated and added to table');
    }
  }

  Future<void> _addSelectedWifiToTable() async {
    // Clear the previous tempMacVals
    await startScan(context);
    dev.log('selectedAccessPoints : $selectedAccessPoints');

    // Map to store aggregated signal levels for each MAC address
    Map<String, int> aggregatedSignalLevels = {};
    for (WiFiAccessPoint wifi in accessPoints) {
      if (wifi.ssid == "Tenda_DAE618") {
        selectedAccessPoints.add(wifi);
      }
    }

    for (WiFiAccessPoint selctaccessPoint in selectedAccessPoints) {
      // Aggregate signal levels for each MAC address
      aggregatedSignalLevels.update(
        selctaccessPoint.bssid,
        (level) => level + selctaccessPoint.level,
        ifAbsent: () => selctaccessPoint.level,
      );

      // Add MAC address to macIdInTable if it's not already present
      if (!macIdInTable.contains(selctaccessPoint.bssid)) {
        showGenericDialog(
          context: context,
          content: ('Mac Id not recognised'),
          title: ("An Error Occured"),
          optionsBuilder: () => {
            'OK': Navigator.pop,
          },
        );
      }
    }

    // // Convert aggregated signal levels to the required format
    // rowData.addAll(
    //   aggregatedSignalLevels.entries.map((entry) => {
    //         entry.key: entry.value,
    //       }),
    // );
  }

  Future<String> getRoom() async {
    rowData = [
      {"c6:74:ad:78:62:4d": -49},
      {"c6:74:ad:78:61:55": -56},
      {"c6:74:ad:78:61:11": -63},
      {"c8:a6:08:58:cd:28": -78},
      {"c6:74:ad:78:62:01": -58},
      {"c6:74:ad:78:59:35": -74}
    ];
    String room = await sendDataToBackend(rowData);
    dev.log("Room: $room");
    //dev.log('tempMacVals : $tempMacVals');

    dev.log('rowData: $rowData');
    return room;
  }
}
