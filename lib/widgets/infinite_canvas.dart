import 'package:flutter/material.dart';

import '../controllers/canvas_controller.dart';
import '../controllers/editor_controller.dart';
import 'tree_canvas.dart';

class InfiniteCanvas extends StatefulWidget {
  const InfiniteCanvas({
    super.key,
  });

  @override
  State<InfiniteCanvas> createState() =>
      _InfiniteCanvasState();
}

class _InfiniteCanvasState
    extends State<InfiniteCanvas> {
  final CanvasController canvas =
      CanvasController();

  final EditorController editor =
      EditorController();

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      transformationController:
          canvas.transformationController,
      boundaryMargin:
          const EdgeInsets.all(double.infinity),
      constrained: false,
      minScale: 0.1,
      maxScale: 8,
      child: SizedBox(
        width: 10000,
        height: 10000,
        child: TreeCanvas(
          controller: editor,
        ),
      ),
    );
  }

  @override
  void dispose() {
    canvas.dispose();
    editor.dispose();
    super.dispose();
  }
}
