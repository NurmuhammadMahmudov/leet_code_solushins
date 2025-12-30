class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

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
