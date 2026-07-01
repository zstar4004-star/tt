import 'package:flutter/foundation.dart';

import 'tree_scene.dart';

class TreeEngine extends ChangeNotifier {
  final TreeScene scene = TreeScene();

  void refresh() {
    notifyListeners();
  }
}
