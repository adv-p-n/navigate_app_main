import 'package:flutter/material.dart';
import 'package:navigate_app_main/waypoints/wayponts.dart'; // Import the waypoint.dart file
import 'dart:developer' as dev show log;

class SearchPage extends StatefulWidget {
  final Waypoint? endWaypoint;
  const SearchPage({super.key, required this.endWaypoint});

  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {
  Waypoint? startWaypoint = waypointNotFound;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search for Starting point'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SearchAnchor(
              builder: (BuildContext context, SearchController controller) {
                return SearchBar(
                  controller: controller,
                  padding: const MaterialStatePropertyAll<EdgeInsets>(
                      EdgeInsets.symmetric(horizontal: 16.0)),
                  constraints:
                      const BoxConstraints(maxWidth: 350, minHeight: 40),
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
                        startWaypoint = waypoint;
                      });
                      // Close the search view
                      controller.closeView(waypoint.name);
                      FocusScope.of(context).unfocus();
                      dev.log('${waypoint.name}');
                    },
                  );
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Check if both start and end waypoints are selected
                if (startWaypoint!.name.isNotEmpty &&
                    widget.endWaypoint!.name.isNotEmpty) {
                  // Create Waypoint objects for start and end waypoints
                  // Waypoint? startWaypoint;
                  // Waypoint? endWaypoint;
                  dev.log(widget.endWaypoint!.name);
                  dev.log(startWaypoint!.name);

                  // startWaypoint = waypoints.firstWhere(
                  //     (waypoint) =>
                  //         waypoint.name == _startController.text.toUpperCase(),
                  //     orElse: () =>
                  //         waypointNotFound); // Set startWaypoint to null if not found

                  // endWaypoint = waypoints.firstWhere(
                  //     (waypoint) => waypoint.name == widget.endWaypointText,
                  //     orElse: () =>
                  //         waypointNotFound); // Set endWaypoint to null if not found

                  if (startWaypoint == waypointNotFound ||
                      widget.endWaypoint == waypointNotFound) {
                    throw StateError('Start or End Waypoint Not Found');
                  }

                  // Return selected waypoints to the previous page
                  Navigator.pop(context,
                      {'start': startWaypoint, 'end': widget.endWaypoint});
                } else {
                  // Handle case where either start or end waypoint is not selected
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content:
                            Text('Please select both start and end waypoints')),
                  );
                }
              },
              child: const Text('Search'),
            ),
          ],
        ),
      ),
    );
  }
}
