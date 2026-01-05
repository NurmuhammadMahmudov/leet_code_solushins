
import 'tree_node.dart';

int countNodes(TreeNode? root) {
  if (root == null) return 0;
  return 1 + countNodes(root.left) + countNodes(root.right);
}

void main(List<String> args) {
}