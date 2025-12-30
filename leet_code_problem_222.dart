class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

int countNodes(TreeNode? root) {
  if (root == null) return 0;
  return 1 + countNodes(root.left) + countNodes(root.right);
}

void main(List<String> args) {
}