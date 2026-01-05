import 'tree_node.dart';

List<String> binaryTreePaths(TreeNode? root) {
  final List<String> result = [];
  void dfs(TreeNode? node, String path) {
    final currentPath = path.isEmpty ? '${node!.val}' : '$path->${node!.val}';

    if (node.left == null && node.right == null) {
      result.add(currentPath);
      return;
    }
    if (node.right != null) {
      dfs(node.right, currentPath);
    }

    if (node.left != null) {
      dfs(node.left, currentPath);
    }
  }

  if (root != null) {
    dfs(root, '');
  }

  return result;
}

void main(List<String> args) {}
