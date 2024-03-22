class Waypoint implements Comparable<Waypoint> {
  final String name;
  final double posX;
  final double posY;

  Waypoint({required this.name, required this.posX, required this.posY});

  @override
  int compareTo(Waypoint other) {
    // Compare waypoints based on their names
    return name.compareTo(other.name);
    // If you want to compare based on other criteria, adjust the logic here
  }
}

final List<Waypoint> waypoints = [
  Waypoint(name: 'GWT1', posX: 85, posY: 50),
  Waypoint(name: 'N109C', posX: 85, posY: 90),
  Waypoint(name: 'N109B', posX: 85, posY: 120),
  Waypoint(name: 'N109A', posX: 85, posY: 150),
  Waypoint(name: 'N112D', posX: 160, posY: -5),
  Waypoint(name: 'N112C', posX: 160, posY: 5),
  Waypoint(name: 'N112B', posX: 160, posY: 20),
  N188B
  // Add more waypoints as needed
];

final GWT1 = Waypoint(name: 'GWT1', posX: 85, posY: 50);
final N109C = Waypoint(name: 'N109C', posX: 85, posY: 90);
final N109B = Waypoint(name: 'N109B', posX: 85, posY: 120);
final N109A = Waypoint(name: 'N109A', posX: 85, posY: 150);
final N112D = Waypoint(name: 'N112D', posX: 160, posY: -5);
final N112C = Waypoint(name: 'N112C', posX: 160, posY: 5);
final N112B = Waypoint(name: 'N112B', posX: 160, posY: 20);
final N188B = Waypoint(name: 'N112B', posX: 160, posY: 20);
