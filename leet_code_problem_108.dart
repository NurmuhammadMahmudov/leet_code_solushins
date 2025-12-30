class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

TreeNode? sortedArrayToBST(List<int> nums) {
  if (nums.isEmpty) return null;
  int mid = nums.length~/2;
  TreeNode? root = TreeNode(nums[mid]);
  root.left = sortedArrayToBST(nums.sublist(0, mid));
  root.right = sortedArrayToBST(nums.sublist(mid + 1));
  return root;
}

void main(List<String> args) {
  print(sortedArrayToBST([-10, -3, 0, 5, 9]));
}
