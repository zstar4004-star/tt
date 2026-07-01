import 'package:flutter/material.dart';

import '../controllers/canvas_controller.dart';
import '../painters/grid_painter.dart';

class InfiniteCanvas extends StatefulWidget {
  const InfiniteCanvas({super.key});

  @override
  State<InfiniteCanvas> createState() => _InfiniteCanvasState();
}

class _InfiniteCanvasState extends State<InfiniteCanvas> {
  final CanvasController controller = CanvasController();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (_, __) {
        return InteractiveViewer(
          transformationController: controller.transformationController,
          boundaryMargin: const EdgeInsets.all(double.infinity),
          minScale: 0.1,
          maxScale: 8,
          panEnabled: true,
          scaleEnabled: true,
          constrained: false,
          child: SizedBox(
            width: 10000,
            height: 10000,
            child: Stack(
              children: [
                if (controller.showGrid)
                  CustomPaint(
                    size: const Size(10000, 10000),
                    painter: GridPainter(),
                  ),

                const Center(
                  child: Text(
                    "Canvas Ready",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
