
import 'tree_node.dart';

List<int> postorderTraversal(TreeNode? root) {

    List<int> result = [];

  void travelNode(TreeNode? node) {
    if (node == null) return;
    travelNode(node.left);
    travelNode(node.right);
    result.add(node.val);
  }

  travelNode(root);
  return result;

}
