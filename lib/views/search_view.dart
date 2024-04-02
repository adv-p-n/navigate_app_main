import 'package:flutter/material.dart';
import 'package:navigate_app_main/waypoints/wayponts.dart'; // Import the waypoint.dart file

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {
  late TextEditingController _startController;
  late TextEditingController _endController;

  @override
  void initState() {
    super.initState();
    _startController = TextEditingController();
    _endController = TextEditingController();
  }

  @override
  void dispose() {
    _startController.dispose();
    _endController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _startController,
              decoration: InputDecoration(
                labelText: 'Start Waypoint',
                hintText: 'Enter start waypoint',
                suffixIcon: IconButton(
                  onPressed: () => _startController.clear(),
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _endController,
              decoration: InputDecoration(
                labelText: 'End Waypoint',
                hintText: 'Enter end waypoint',
                suffixIcon: IconButton(
                  onPressed: () => _endController.clear(),
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Check if both start and end waypoints are selected
                if (_startController.text.isNotEmpty &&
                    _endController.text.isNotEmpty) {
                  // Create Waypoint objects for start and end waypoints
                  Waypoint startWaypoint = waypoints.firstWhere(
                      (waypoint) => waypoint.name == _startController.text,
                      orElse: () =>
                          throw StateError('Start waypoint not found'));
                  Waypoint endWaypoint = waypoints.firstWhere(
                      (waypoint) => waypoint.name == _endController.text,
                      orElse: () => throw StateError('End waypoint not found'));

                  // Return selected waypoints to the previous page
                  Navigator.pop(
                      context, {'start': startWaypoint, 'end': endWaypoint});
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
