class Waypoint {
  final String name;
  final double posX;
  final double posY;

  Waypoint({required this.name, required this.posX, required this.posY});
}

final List<Waypoint> waypoints = [
  Waypoint(name: 'A', posX: 100, posY: 100),
  Waypoint(name: 'B', posX: 200, posY: 200),
  Waypoint(name: 'C', posX: 300, posY: 300),
  // Add more waypoints as needed
];
