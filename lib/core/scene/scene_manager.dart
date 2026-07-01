import 'package:flutter/foundation.dart';

import 'tree_scene.dart';
import 'scene_node.dart';

class SceneManager extends ChangeNotifier {
  final TreeScene scene = TreeScene();

  SceneNode? selected;

  void addRoot(SceneNode node) {
    scene.addRoot(node);
    notifyListeners();
  }

  void removeRoot(SceneNode node) {
    scene.removeRoot(node);

    if (selected == node) {
      selected = null;
    }

    notifyListeners();
  }

  void select(SceneNode? node) {
    scene.clearSelection();

    selected = node;

    if (node != null) {
      node.selected = true;
    }

    notifyListeners();
  }
}
