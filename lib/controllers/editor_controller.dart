import 'package:flutter/material.dart';

import '../core/scene/scene_manager.dart';
import '../models/trunk_node.dart';

class EditorController extends ChangeNotifier {
  EditorController() {
    _createInitialScene();
  }

  final SceneManager sceneManager = SceneManager();

  void _createInitialScene() {
    if (sceneManager.scene.hasTrunk) return;

    final trunk = TrunkNode(
      id: "trunk_0",
    );

    trunk.transform = trunk.transform.copyWith(
      position: const Offset(5000, 5000),
    );

    sceneManager.addRoot(trunk);
  }

  void notifySceneChanged() {
    notifyListeners();
  }
}
