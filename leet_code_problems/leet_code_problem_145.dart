class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

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
