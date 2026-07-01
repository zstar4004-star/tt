import 'package:flutter/material.dart';

import '../core/node_type.dart';
import '../core/tree_node.dart';

class BranchNode extends TreeNode {
  BranchNode({
    required super.id,
  }) : super(type: NodeType.branch);

  String name = "";

  double length = 180;

  double thickness = 18;

  double curvature = .30;

  @override
  Rect get localBounds =>
      Rect.fromLTWH(
        0,
        -thickness / 2,
        length,
        thickness,
      );
}
