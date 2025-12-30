class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

int minDepth(TreeNode? root) {
  if (root == null) return 0;

  if (root.left == null && root.right == null) return 1;
  if (root.left == null) return minDepth(root.right) + 1;

  if (root.right == null) return minDepth(root.left) + 1;

  return 1 +
      (minDepth(root.left) < minDepth(root.right)
          ? minDepth(root.left)
          : minDepth(root.right));
}
