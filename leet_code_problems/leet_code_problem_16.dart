int threeSumClosest(List<int> nums, int target) {
  nums.sort();
  int closestSum = nums[0] + nums[1] + nums[2];
  for (var i = 0; i < nums.length - 2; i++) {
    int left = i + 1;
    int right = nums.length - 1;
    while (left < right) {
      int sum = nums[i] + nums[left] + nums[right];
      if ((target - sum).abs() < (target - closestSum).abs()) {
        closestSum = sum;
      }

      if (sum > target) {
        right--;
      } else {
        left++;
      }
    }
  }
  return closestSum;
}

void main(List<String> args) {
  print(threeSumClosest([-1, 2, 1, -4], 1));
  print(threeSumClosest([0, 0, 0], 1));
}
