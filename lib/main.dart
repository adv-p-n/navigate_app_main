import 'package:flutter/material.dart';
import 'package:navigate_app_main/Graph/f2_graph.dart';
import 'package:navigate_app_main/Utils/build_Dotted_Path.dart';
import 'package:navigate_app_main/Utils/icon_list_for_bottombar.dart';
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
      title: 'Navigate',
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
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Navigate"),
        backgroundColor: Colors.blueGrey[200],
        actions: [
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
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 50, // Set the desired width here
              child: SearchAnchor(
                builder: (BuildContext context, SearchController controller) {
                  return SearchBar(
                    controller: controller,
                    padding: const MaterialStatePropertyAll<EdgeInsets>(
                        EdgeInsets.symmetric(horizontal: 16.0)),
                    constraints:
                        const BoxConstraints(maxWidth: 100, minHeight: 40),
                    hintText: "Search for a Classroom",
                    onTap: () {
                      controller.openView();
                    },
                    onChanged: (_) {
                      controller.openView();
                    },
                    leading: const Icon(Icons.search),
                  );
                },
                viewHintText: "Search for a Classroom",
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
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Center(
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

                      // //TO DISPALY ALL WAYPOINTS
                      // for (var waypoint in waypoints)
                      //   if (waypoint.floor == selectedFloorIndex)
                      //     Positioned(
                      //       left: waypoint.posX + 5,
                      //       top: waypoint.posY + 10,
                      //       child: GestureDetector(
                      //         onTap: () {
                      //           // Handle waypoint tap
                      //           dev.log('Waypoint ${waypoint.name} tapped');
                      //         },
                      //         child: const Icon(
                      //           Icons.location_on,
                      //           color: Colors.red,
                      //           size: 15,
                      //         ),
                      //       ),
                      //     ),

                      //TO DISPALY Selected(endWaypoint) WAYPOINTS
                      if (endWaypoint != null ||
                          endWaypoint == waypointNotFound)
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
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          //await _addSelectedWifiToTable();
          try {
            path = [];
            String prediction = await getRoom(context);
            endWaypoint = waypoints.firstWhere(
                (waypoint) => waypoint.name == prediction,
                orElse: () =>
                    waypointNotFound); // Set endWaypoint to null if not found
            dev.log(
                "prediction: $prediction , EndWaypoint : ${endWaypoint?.name}");
            // Do something with the prediction
          } catch (e) {
            dev.log('Error: $e');
            // Handle the error gracefully
          }
        },
        child: const Icon(Icons.navigation),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey[75],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (int i = 0; i < floorImagePaths.length; i++)
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedFloorIndex = i;
                  });
                },
                child: Image.asset(
                  floorImagePaths[i],
                  width: 24, // Adjust the width as needed
                  height: 24, // Adjust the height as needed
                  color: selectedFloorIndex == i
                      ? Colors.black
                      : Colors
                          .grey[600], // Change color based on selected floor
                ),
              ),
          ],
        ),
      ),
    );
  }
}
