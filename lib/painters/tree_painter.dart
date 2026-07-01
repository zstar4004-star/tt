import 'package:flutter/material.dart';

import '../core/scene/scene_manager.dart';
import '../core/scene/scene_node.dart';
import 'trunk_painter.dart';
import 'branch_painter.dart';
import 'leaf_painter.dart';

class TreePainter extends CustomPainter {
  final SceneManager manager;

  TreePainter(this.manager) : super(repaint: manager);

  final TrunkPainter _trunkPainter = TrunkPainter();
  final BranchPainter _branchPainter = BranchPainter();
  final LeafPainter _leafPainter = LeafPainter();

  @override
  void paint(Canvas canvas, Size size) {
    for (final node in manager.scene.traverse()) {
      if (!node.visible) continue;

      canvas.save();

      canvas.translate(
        node.transform.position.dx,
        node.transform.position.dy,
      );

      canvas.rotate(node.transform.rotation);

      canvas.scale(
        node.transform.scaleX,
        node.transform.scaleY,
      );

      switch (node.type) {
        case SceneNodeType.trunk:
          _trunkPainter.paint(canvas, node);
          break;

        case SceneNodeType.branch:
          _branchPainter.paint(canvas, node);
          break;

        case SceneNodeType.leaf:
          _leafPainter.paint(canvas, node);
          break;
      }

      canvas.restore();
    }
  }

  @override
  bool shouldRepaint(TreePainter oldDelegate) => true;
}
