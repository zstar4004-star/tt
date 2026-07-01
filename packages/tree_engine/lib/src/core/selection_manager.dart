import 'package:flutter/foundation.dart';

import 'tree_node.dart';
import 'tree_scene.dart';

class SelectionManager extends ChangeNotifier {
  SelectionManager(this.scene);

  final TreeScene scene;

  TreeNode? _selected;

  TreeNode? get selected => _selected;

  bool get hasSelection => _selected != null;

  void clear() {
    scene.clearSelection();
    _selected = null;
    notifyListeners();
  }

  void select(TreeNode node) {
    if (!scene.contains(node)) return;

    scene.clearSelection();

    node.selected = true;

    _selected = node;

    notifyListeners();
  }

  void toggle(TreeNode node) {
    if (!scene.contains(node)) return;

    node.selected = !node.selected;

    if (node.selected) {
      _selected = node;
    } else if (_selected == node) {
      _selected = null;
    }

    notifyListeners();
  }
}
