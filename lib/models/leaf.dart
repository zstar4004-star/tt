import 'dart:ui';
import 'tree_object.dart';
import 'object_type.dart';

class Leaf extends TreeObject {
  Leaf({
    required super.id,
    required Offset position,
  }) : super(
          type: ObjectType.leaf,
          position: position,
        );

  String name = "";

  Color color = const Color(0xff3aa655);
}
