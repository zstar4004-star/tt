import 'package:flutter/material.dart';

import '../models/branch_node.dart';

class BranchPainter {

  void paint(Canvas canvas, dynamic node) {

    final branch = node as BranchNode;

    final path = Path();

    path.moveTo(0, 0);

    path.quadraticBezierTo(

      branch.length * 0.5,

      -branch.curvature * 100,

      branch.length,

      0,

    );

    final paint = Paint()

      ..color = const Color(0xff8D6E63)

      ..strokeWidth = branch.thickness

      ..style = PaintingStyle.stroke

      ..strokeCap = StrokeCap.round;

    canvas.drawPath(path, paint);

  }

}
