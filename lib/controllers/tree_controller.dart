import 'package:flutter/material.dart';

import '../models/tree_object.dart';

class TreeController extends ChangeNotifier {
  final List<TreeObject> objects = [];

  void add(TreeObject object) {
    objects.add(object);
    notifyListeners();
  }

  void remove(TreeObject object) {
    objects.remove(object);
    notifyListeners();
  }

  void clearSelection() {
    for (final o in objects) {
      o.selected = false;
    }
    notifyListeners();
  }

  void select(TreeObject object) {
    clearSelection();
    object.selected = true;
    notifyListeners();
  }
}
