import 'package:flutter/material.dart';

import '../controllers/editor_controller.dart';
import '../painters/tree_painter.dart';

class TreeCanvas extends StatelessWidget {
  const TreeCanvas({
    super.key,
    required this.controller,
  });

  final EditorController controller;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: AnimatedBuilder(
        animation: controller.sceneManager,
        builder: (_, __) {
          return CustomPaint(
            painter: TreePainter(
              controller.sceneManager,
            ),
            size: const Size(
              10000,
              10000,
            ),
          );
        },
      ),
    );
  }
}
