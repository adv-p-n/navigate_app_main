import 'dart:math';

import 'package:flutter/material.dart';
import 'package:navigate_app_main/Graph/f2_graph.dart';
import 'package:navigate_app_main/views/search_view.dart';
import 'package:navigate_app_main/waypoints/wayponts.dart';
import 'dart:developer' as dev show log;

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
        title: const Text("Home"),
        backgroundColor: Colors.amber,
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

              //_buildDottedPath(path),

              //TO DISPALY ALL WAYPOINTS
              for (var waypoint in path)
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
                            'Floor ${index + 1}',
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

  Widget _buildDottedPath(List<Waypoint> path) {
    List<Widget> dottedLines = [];

    for (int i = 0; i < path.length - 1; i++) {
      double startX = path[i].posX;
      double startY = path[i].posY;
      double endX = path[i + 1].posX;
      double endY = path[i + 1].posY;

      // Calculate distance between waypoints
      double distance = sqrt(pow(endX - startX, 2) + pow(endY - startY, 2));

      // Calculate number of dots for the path based on distance
      int numberOfDots =
          (distance / 5).ceil(); // Adjust size of each dot as needed

      // Calculate step size for each dot
      double stepX = (endX - startX) / numberOfDots;
      double stepY = (endY - startY) / numberOfDots;

      // Add dots to the path
      for (int j = 0; j < numberOfDots; j++) {
        double x = startX + stepX * j;
        double y = startY + stepY * j;
        dottedLines.add(
          Positioned(
            left: x + 11,
            top: y + 20,
            child: Container(
              width: 2,
              height: 2,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
          ),
        );
      }
    }

    return Stack(children: dottedLines);
  }
}
