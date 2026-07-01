import 'tree_node.dart';
import 'node_type.dart';

class TreeScene {
  TreeScene();

  final List<TreeNode> _roots = [];

  List<TreeNode> get roots => List.unmodifiable(_roots);

  bool get hasTrunk =>
      _roots.any((e) => e.type == NodeType.trunk);

  void addRoot(TreeNode node) {
    if (node.type == NodeType.trunk && hasTrunk) {
      throw StateError(
        'Only one trunk is allowed in the scene.',
      );
    }

    if (node.parent != null) {
      throw StateError(
        'Root node cannot already have a parent.',
      );
    }

    _roots.add(node);
  }

  void removeRoot(TreeNode node) {
    _roots.remove(node);
  }

  Iterable<TreeNode> traverse() sync* {
    for (final root in _roots) {
      yield* _walk(root);
    }
  }

  Iterable<TreeNode> _walk(TreeNode node) sync* {
    yield node;

    for (final child in node.children) {
      yield* _walk(child);
    }
  }

  TreeNode? findById(String id) {
    for (final node in traverse()) {
      if (node.id == id) {
        return node;
      }
    }

    return null;
  }

  bool contains(TreeNode node) {
    return traverse().contains(node);
  }

  void clearSelection() {
    for (final node in traverse()) {
      node.selected = false;
    }
  }

  List<TreeNode> selectedNodes() {
    return traverse()
        .where((e) => e.selected)
        .toList(growable: false);
  }

  void remove(TreeNode node) {
    if (node.parent != null) {
      node.parent!.removeChild(node);
      return;
    }

    _roots.remove(node);
  }
}
