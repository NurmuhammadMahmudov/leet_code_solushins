
import 'tree_node.dart';
TreeNode? invertTree(TreeNode? root) {
  if (root == null) return null;

  final temp = root.left;
  root.left = root.right;
  root.right = temp;

  invertTree(root.left);
  invertTree(root.right);

  return root;
}


void main(List<String> args) {
  
}