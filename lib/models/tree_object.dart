import 'dart:ui';
import 'object_type.dart';

abstract class TreeObject {
  TreeObject({
    required this.id,
    required this.type,
    required this.position,
  });

  final String id;

  final ObjectType type;

  Offset position;

  double rotation = 0;

  double scale = 1;

  double width = 100;

  double height = 100;

  bool selected = false;

  bool visible = true;

  bool locked = false;

  double opacity = 1;

  TreeObject? parent;

  final List<TreeObject> children = [];
}
