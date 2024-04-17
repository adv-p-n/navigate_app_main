import 'package:flutter/material.dart';
import 'package:navigate_app_main/Graph/f2_graph.dart';
import 'package:navigate_app_main/Utils/build_Dotted_Path.dart';
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
}
