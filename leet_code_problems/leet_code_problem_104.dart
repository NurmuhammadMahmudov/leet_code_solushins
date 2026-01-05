
import 'tree_node.dart';
int maxDepth(TreeNode? root) {
  if (root == null) return 0;
  int leftDepth = maxDepth(root.left);
  int rightDepth = maxDepth(root.right);
  return 1 + (leftDepth > rightDepth ? leftDepth : rightDepth);
}

void main(List<String> args) {
  TreeNode root = TreeNode(3);
  root.left = TreeNode(9);
  root.right = TreeNode(20, TreeNode(15), TreeNode(7));
  
  print(maxDepth(root));
}