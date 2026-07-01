import 'package:flutter/material.dart';

import '../core/scene/scene_node.dart';

class LeafNode extends SceneNode {
  LeafNode({
    required super.id,
  }) : super(type: SceneNodeType.leaf);

  String name = "";

  double radius = 22;

  @override
  Rect get localBounds =>
      Rect.fromCircle(
        center: Offset.zero,
        radius: radius,
      );
}
