bool containsNearbyDuplicate(List<int> nums, int k) {
  Map<int, int> lastSeen = {};
  for (var i = 0; i < nums.length; i++) {
    if (lastSeen.containsKey(nums[i]) && i - lastSeen[nums[i]]! <= k) {
      return true;
    }
    lastSeen[nums[i]] = i;
  }
  return false;
}

void main(List<String> args) {
  print(containsNearbyDuplicate([1, 2, 3, 1], 3));
}
