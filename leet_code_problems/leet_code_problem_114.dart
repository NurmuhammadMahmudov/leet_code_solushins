
import 'tree_node.dart';

List<int> preorderTraversal(TreeNode? root) {
  List<int> result = [];

  void travelNode(TreeNode? node) {
    if (node == null) return;
    result.add(node.val);
    travelNode(node.left);
    travelNode(node.right);
    return;
  }

  travelNode(root);
  return result;
}
