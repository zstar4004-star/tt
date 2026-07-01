import 'package:flutter/material.dart';

import '../core/node_type.dart';
import '../core/tree_node.dart';

class LeafNode extends TreeNode {
  LeafNode({
    required super.id,
  }) : super(type: NodeType.leaf);

  String name = "";

  double radius = 24;

  @override
  Rect get localBounds =>
      Rect.fromCircle(
        center: Offset.zero,
        radius: radius,
      );
}
