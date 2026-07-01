import 'tree_node.dart';
import 'node_type.dart';

class TreeScene {
  final List<TreeNode> _roots = [];

  List<TreeNode> get roots => List.unmodifiable(_roots);

  bool get hasTrunk {
    return _roots.any(
      (e) => e.type == NodeType.trunk,
    );
  }

  void addRoot(TreeNode node) {
    if (node.type == NodeType.trunk && hasTrunk) {
      throw Exception(
        "Only one trunk is allowed.",
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

  void clearSelection() {
    for (final node in traverse()) {
      node.selected = false;
    }
  }
}
