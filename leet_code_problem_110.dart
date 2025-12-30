import 'dart:math';

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

bool isBalanced(TreeNode? root) {
  int height(TreeNode? node){
    if(node==null) return 0;

    int leftHeight= height(node.left);
    int rightHeight= height(node.right);

    if (leftHeight == -1 || rightHeight == -1) return -1;
    if((leftHeight-rightHeight).abs()>1) return -1;

    return max(leftHeight, rightHeight)+1;
  }  
  return height(root) != -1;

}

void main(List<String> args) {
  TreeNode root = TreeNode(3);
  root.left = TreeNode(9);
  root.right = TreeNode(20, TreeNode(15), TreeNode(7));
  
  print(isBalanced(root)); 

  print(isBalanced(TreeNode(1, TreeNode(2, TreeNode(3), TreeNode(4)), TreeNode(2, TreeNode(4), TreeNode(3)))));
}