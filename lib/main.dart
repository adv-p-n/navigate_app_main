import 'package:flutter/material.dart';
import 'package:navigate_app_main/Graph/f2_graph.dart';
import 'package:navigate_app_main/Utils/build_Dotted_Path.dart';
import 'package:navigate_app_main/views/search_view.dart';
import 'package:navigate_app_main/waypoints/wayponts.dart';
// import 'package:navigate_app_main/Utils/error_dialog_builder.dart';
// import 'package:navigate_app_main/wifi/wifi_mac_addresses.dart';
// import 'package:navigate_app_main/wifi/wifi_scan_backend.dart';
// import 'package:wifi_scan/wifi_scan.dart';
import 'dart:developer' as dev show log;

import 'package:navigate_app_main/wifi/wifi_scan.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
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
          SearchAnchor(
            builder: (BuildContext context, SearchController controller) {
              return SearchBar(
                controller: controller,
                padding: const MaterialStatePropertyAll<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 16.0)),
                constraints: const BoxConstraints(maxWidth: 250, minHeight: 35),
                onTap: () {
                  controller.openView();
                },
                onChanged: (_) {
                  controller.openView();
                },
                leading: const Icon(Icons.search),
              );
            },
            suggestionsBuilder:
                (BuildContext context, SearchController controller) {
              // Filtered list of waypoints based on user input
              final filteredWaypoints = waypoints
                  .where((waypoint) => waypoint.name
                      .toLowerCase()
                      .contains(controller.value.text.toLowerCase()))
                  .toList();

              return List<ListTile>.generate(filteredWaypoints.length,
                  (int index) {
                final Waypoint waypoint = filteredWaypoints[index];
                return ListTile(
                  title: Text(waypoint.name),
                  onTap: () {
                    // Set the endpoint directly to the search value
                    setState(() {
                      endWaypoint = waypoint;
                    });
                    // Close the search view
                    controller.closeView(waypoint.name);
                    // Close the keyboard
                    FocusScope.of(context).unfocus();
                    path = [];
                    dev.log('${waypoint.name}');
                  },
                );
              });
            },
          ),
          IconButton(
            onPressed: () async {
              final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SearchPage(
                            endWaypoint: endWaypoint,
                          )));
              if (result != null) {
                setState(() {
                  startWaypoint = result['start'];
                  //endWaypoint = result['end'];
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
                  String prediction = await getRoom(context);
                  dev.log(prediction);
                  // Do something with the prediction
                } catch (e) {
                  dev.log('Error: $e');
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

              buildDottedPath(path, selectedFloorIndex),

              //TO DISPALY ALL WAYPOINTS
              if (endWaypoint != null || endWaypoint == waypointNotFound)
                if (endWaypoint?.floor == selectedFloorIndex)
                  Positioned(
                    left: endWaypoint!.posX + 5,
                    top: endWaypoint!.posY + 10,
                    child: GestureDetector(
                      onTap: () {
                        // Handle waypoint tap
                        dev.log('Waypoint ${endWaypoint?.name} tapped');
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
                            'Floor $index',
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
}
