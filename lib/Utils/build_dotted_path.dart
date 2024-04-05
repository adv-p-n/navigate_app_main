import 'dart:math';

import 'package:flutter/material.dart';
import 'package:navigate_app_main/waypoints/wayponts.dart';

Widget buildDottedPath(List<Waypoint> path, int selectedFloorIndex) {
  List<Widget> dottedLines = [];
  Waypoint? startWaypointPath;
  Waypoint? endWaypointPath;

  // Find the start and end waypoints on the selected floor
  for (Waypoint waypoint in path) {
    if (waypoint.floor == selectedFloorIndex) {
      startWaypointPath ??= waypoint;
      endWaypointPath = waypoint;
    }
  }

  // Add an icon for the start waypoint
  if (startWaypointPath != null) {
    dottedLines.add(
      Positioned(
        left: startWaypointPath.posX + 5,
        top: startWaypointPath.posY + 10,
        child: const Icon(
          Icons.location_on_outlined,
          color: Colors.green, // Change color as needed
          size: 15,
        ),
      ),
    );
  }

  // Add an icon for the end waypoint
  if (endWaypointPath != null && startWaypointPath != endWaypointPath) {
    dottedLines.add(
      Positioned(
        left: endWaypointPath.posX + 5,
        top: endWaypointPath.posY + 10,
        child: const Icon(
          Icons.location_on_outlined,
          color: Colors.blue, // Change color as needed
          size: 15,
        ),
      ),
    );
  }

  // Connect the start and end waypoints with dotted lines
  for (int i = 0; i < path.length - 1; i++) {
    Waypoint currentWaypoint = path[i];
    Waypoint nextWaypoint = path[i + 1];

    // Check if both waypoints are on the selected floor
    if (currentWaypoint.floor == selectedFloorIndex &&
        nextWaypoint.floor == selectedFloorIndex) {
      double startX = currentWaypoint.posX;
      double startY = currentWaypoint.posY;
      double endX = nextWaypoint.posX;
      double endY = nextWaypoint.posY;
      // Calculate distance between waypoints
      double distance = sqrt(pow(endX - startX, 2) + pow(endY - startY, 2));

      // Calculate number of dots for the path based on distance
      int numberOfDots =
          (distance / 5).ceil(); // Adjust size of each dot as needed

      // Calculate step size for each dot
      double stepX = (endX - startX) / numberOfDots;
      double stepY = (endY - startY) / numberOfDots;

      // Add dots to represent the path
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
                color: Colors.red, // Change color as needed
                shape: BoxShape.circle,
              ),
            ),
          ),
        );
      }
    }
  }

  return Stack(children: dottedLines);
}
