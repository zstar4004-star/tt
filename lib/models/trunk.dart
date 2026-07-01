import 'dart:ui';
import 'tree_object.dart';
import 'object_type.dart';

class Trunk extends TreeObject {
  Trunk({
    required super.id,
    required Offset position,
  }) : super(
          type: ObjectType.trunk,
          position: position,
        );

  final List<String> names = [];

  double barkNoise = 0.4;
}
