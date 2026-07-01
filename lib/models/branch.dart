import 'dart:ui';
import 'tree_object.dart';
import 'object_type.dart';

class Branch extends TreeObject {
  Branch({
    required super.id,
    required Offset position,
  }) : super(
          type: ObjectType.branch,
          position: position,
        );

  double length = 220;

  double thickness = 24;

  double curvature = 0.35;

  String name = "";
}
