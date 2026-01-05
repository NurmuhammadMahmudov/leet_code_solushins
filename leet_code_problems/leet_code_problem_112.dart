
import 'tree_node.dart';
bool hasPathSum(TreeNode? root, int targetSum) {
  bool deepFirstSearch(TreeNode? node, int currentSum) {
    if (node == null) return false;

    currentSum += node.val;
    if (node.left == null && node.right == null) return currentSum == targetSum;

    return deepFirstSearch(node.left, currentSum) ||
        deepFirstSearch(node.right, currentSum);
  }

  return deepFirstSearch(root, 0);
}
