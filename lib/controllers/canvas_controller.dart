import 'package:flutter/material.dart';

class CanvasController extends ChangeNotifier {
  final TransformationController transformationController =
      TransformationController();

  bool showGrid = true;

  void resetView() {
    transformationController.value = Matrix4.identity();
    notifyListeners();
  }

  void zoom(double factor) {
    final matrix = transformationController.value.clone();
    matrix.scale(factor);
    transformationController.value = matrix;
    notifyListeners();
  }

  void toggleGrid() {
    showGrid = !showGrid;
    notifyListeners();
  }

  @override
  void dispose() {
    transformationController.dispose();
    super.dispose();
  }
}
