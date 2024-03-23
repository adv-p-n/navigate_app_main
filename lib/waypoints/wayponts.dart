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
