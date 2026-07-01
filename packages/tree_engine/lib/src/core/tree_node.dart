import 'package:flutter/material.dart';

import 'node_type.dart';

class TreeNode {
  TreeNode({
    required this.id,
    required this.type,
  });

  final String id;

  final NodeType type;

  Offset position = Offset.zero;

  double rotation = 0;

  double scale = 1;

  double width = 100;

  double height = 100;

  bool visible = true;

  bool locked = false;

  bool selected = false;

  double opacity = 1;

  TreeNode? parent;

  final List<TreeNode> children = [];

  void addChild(TreeNode node) {
    if (children.contains(node)) {
      return;
    }

    node.parent = this;

    children.add(node);
  }

  void removeChild(TreeNode node) {
    node.parent = null;

    children.remove(node);
  }

  Rect get bounds {
    return Rect.fromCenter(
      center: position,
      width: width,
      height: height,
    );
  }
}
