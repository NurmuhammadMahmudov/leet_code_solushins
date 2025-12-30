import 'dart:math';

import '../development_dart.dart';

const int mod = 1000000007;

int minAbsoluteSumDiff(List<int> nums1, List<int> nums2) {
  List<int> sortedNums1 = mergeSort(nums1);
  int total = 0;
  int maxNum = 0;
  

  for (var i = 0; i < nums1.length; i++) {
    var diff = (nums1[i] - nums2[i]).abs();
    total = (diff + total) % mod;
    int index = lowerBound(sortedNums1, nums2[i]);
    if (index < sortedNums1.length) {
      maxNum = max(diff - (sortedNums1[index] - nums2[i]).abs(), maxNum);
    }
    if (index > 0) {
      maxNum = max(diff - (sortedNums1[index - 1] - nums2[i]).abs(), maxNum);
    }
  }

  return ((total - maxNum) % mod + mod) % mod;
}

void main(List<String> args) {
  var nums1 = [1, 7, 5];
  var nums2 = [2, 3, 5];

  print(minAbsoluteSumDiff(nums1, nums2));
}
