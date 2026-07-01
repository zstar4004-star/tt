import 'package:flutter/material.dart';

import '../core/node_type.dart';
import '../core/tree_node.dart';

class TrunkNode extends TreeNode {
  TrunkNode({
    required super.id,
  }) : super(type: NodeType.trunk);

  final List<String> names = [];

  double width = 140;

  double height = 360;

  @override
  Rect get localBounds =>
      Rect.fromCenter(
        center: Offset.zero,
        width: width,
        height: height,
      );
}
