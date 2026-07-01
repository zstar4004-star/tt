import 'package:flutter/material.dart';

import '../models/trunk_node.dart';

class TrunkPainter {

  void paint(Canvas canvas, dynamic node) {

    final trunk = node as TrunkNode;

    final rect = RRect.fromRectAndRadius(
      Rect.fromCenter(
        center: Offset.zero,
        width: trunk.width,
        height: trunk.height,
      ),
      const Radius.circular(18),
    );

    final bark = Paint()
      ..color = const Color(0xff6D4C41);

    canvas.drawRRect(rect, bark);

    final linePaint = Paint()
      ..color = Colors.brown.shade900
      ..strokeWidth = 2;

    for (double y = -trunk.height / 2; y < trunk.height / 2; y += 18) {

      canvas.drawLine(
        Offset(-trunk.width / 4, y),
        Offset(trunk.width / 4, y + 8),
        linePaint,
      );

    }

  }

}
