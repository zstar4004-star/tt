import 'package:flutter/material.dart';

@immutable
class TransformData {
  final Offset position;
  final double rotation;
  final double scaleX;
  final double scaleY;

  const TransformData({
    this.position = Offset.zero,
    this.rotation = 0.0,
    this.scaleX = 1.0,
    this.scaleY = 1.0,
  });

  Matrix4 get matrix {
    return Matrix4.identity()
      ..translate(position.dx, position.dy)
      ..rotateZ(rotation)
      ..scale(scaleX, scaleY);
  }

  TransformData copyWith({
    Offset? position,
    double? rotation,
    double? scaleX,
    double? scaleY,
  }) {
    return TransformData(
      position: position ?? this.position,
      rotation: rotation ?? this.rotation,
      scaleX: scaleX ?? this.scaleX,
      scaleY: scaleY ?? this.scaleY,
    );
  }
}
