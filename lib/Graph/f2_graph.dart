import 'package:directed_graph/directed_graph.dart';
import 'package:navigate_app_main/waypoints/wayponts.dart';

int comparator(
  Waypoint p1,
  Waypoint p2,
) {
  return p1.compareTo(p2);
}

int sum(int left, int right) => left + right;

var graph = WeightedDirectedGraph<Waypoint, int>({
  N109A: {N109B: 1},
  N109B: {N109C: 1, N109A: 1},
  N109C: {N109B: 1}
}, summation: sum, zero: 0);
