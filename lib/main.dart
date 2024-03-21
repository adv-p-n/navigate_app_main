import 'package:flutter/material.dart';
import 'package:navigate_app_main/waypoints/wayponts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: InteractiveViewer(
          boundaryMargin: const EdgeInsets.all(20),
          minScale: 0.5,
          maxScale: 4.0,
          child: Stack(
            children: [
              // Map image
              Image.asset(
                'assets/Images/floor1_amr.png',
                fit: BoxFit.contain,
              ),
              // Waypoints
              for (var waypoint in waypoints)
                Positioned(
                  left: waypoint.posX,
                  top: waypoint.posY,
                  child: GestureDetector(
                    onTap: () {
                      // Handle waypoint tap
                      print('Waypoint ${waypoint.name} tapped');
                    },
                    child: const Icon(Icons.location_on, color: Colors.red),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
