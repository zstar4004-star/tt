import 'package:flutter/material.dart';

import '../core/scene/scene_node.dart';

class TrunkNode extends SceneNode {
  TrunkNode({
    required super.id,
  }) : super(type: SceneNodeType.trunk);

  final List<String> names = [];

  TextAlign textAlign = TextAlign.center;

  double width = 120;

  double height = 350;

  @override
  Rect get localBounds =>
      Rect.fromCenter(
        center: Offset.zero,
        width: width,
        height: height,
      );
}
