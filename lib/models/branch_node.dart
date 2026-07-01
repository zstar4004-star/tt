import 'package:flutter/material.dart';

import '../core/scene/scene_node.dart';

class BranchNode extends SceneNode {
  BranchNode({
    required super.id,
  }) : super(type: SceneNodeType.branch);

  String name = "";

  double length = 180;

  double thickness = 18;

  double curvature = 0.25;

  @override
  Rect get localBounds =>
      Rect.fromLTWH(
        0,
        -thickness / 2,
        length,
        thickness,
      );
}
