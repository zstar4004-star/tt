import 'scene_node.dart';

class TreeScene {
  final List<SceneNode> _roots = [];

  List<SceneNode> get roots => List.unmodifiable(_roots);

  bool get hasTrunk =>
      _roots.any((e) => e.type == SceneNodeType.trunk);

  void addRoot(SceneNode node) {
    if (node.type == SceneNodeType.trunk && hasTrunk) {
      throw Exception("Only one trunk is allowed.");
    }

    node.parent = null;
    _roots.add(node);
  }

  void removeRoot(SceneNode node) {
    _roots.remove(node);
  }

  Iterable<SceneNode> traverse() sync* {
    for (final root in _roots) {
      yield* _walk(root);
    }
  }

  Iterable<SceneNode> _walk(SceneNode node) sync* {
    yield node;

    for (final child in node.children) {
      yield* _walk(child);
    }
  }

  SceneNode? findById(String id) {
    for (final node in traverse()) {
      if (node.id == id) return node;
    }
    return null;
  }

  void clearSelection() {
    for (final node in traverse()) {
      node.selected = false;
    }
  }
}
