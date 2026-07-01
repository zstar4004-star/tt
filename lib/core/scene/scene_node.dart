import 'package:flutter/material.dart';
import '../geometry/transform.dart';

enum SceneNodeType {
  trunk,
  branch,
  leaf,
}

abstract class SceneNode {
  SceneNode({
    required this.id,
    required this.type,
  });

  final String id;

  final SceneNodeType type;

  TransformData transform = const TransformData();

  SceneNode? parent;

  final List<SceneNode> children = [];

  bool visible = true;

  bool locked = false;

  bool selected = false;

  int layer = 0;

  double opacity = 1;

  Rect get localBounds;

  Rect get worldBounds =>
      localBounds.shift(transform.position);

  void addChild(SceneNode node) {
    node.parent = this;
    children.add(node);
  }

  void removeChild(SceneNode node) {
    node.parent = null;
    children.remove(node);
  }
}
