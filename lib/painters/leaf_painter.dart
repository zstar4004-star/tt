import 'package:flutter/material.dart';

import '../models/leaf_node.dart';

class LeafPainter {

  void paint(Canvas canvas, dynamic node) {

    final leaf = node as LeafNode;

    final path = Path();

    path.moveTo(0, -leaf.radius);

    path.quadraticBezierTo(

      leaf.radius,

      0,

      0,

      leaf.radius,

    );

    path.quadraticBezierTo(

      -leaf.radius,

      0,

      0,

      -leaf.radius,

    );

    canvas.drawPath(

      path,

      Paint()

        ..color = Colors.green

        ..style = PaintingStyle.fill,

    );

  }

}
