import 'package:flutter/material.dart';

import 'node_type.dart';

abstract class TreeNode {
  TreeNode({
    required this.id,
    required this.type,
  });

  final String id;

  final NodeType type;

  Offset position = Offset.zero;

  double rotation = 0;

  double scale = 1;

  bool visible = true;

  bool locked = false;

  bool selected = false;

  double opacity = 1;

  TreeNode? parent;

  final List<TreeNode> children = [];

  void addChild(TreeNode child) {
    child.parent = this;
    children.add(child);
  }

  void removeChild(TreeNode child) {
    child.parent = null;
    children.remove(child);
  }

  Rect get localBounds;

  Rect get worldBounds => localBounds.shift(position);
}
