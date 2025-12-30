import 'dart:math';

double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
  if (nums1.length > nums2.length) {
    return findMedianSortedArrays(nums2, nums1);
  }

  int m = nums1.length;
  int n = nums2.length;
  int halflen = (n + m + 1) ~/ 2;
  int imin = 0, imax = m;

  while (imin <= imax) {
    int i = (imin + imax) ~/ 2;
    int j = halflen - i;

    int maxLeftA = (i == 0) ? -1e6.toInt() : nums1[i - 1];
    int minRightA = (i == m) ? 1e6.toInt() : nums1[i];

    int maxLeftB = (j == 0) ? -1e6.toInt() : nums2[j - 1];
    int minRightB = (j == n) ? 1e6.toInt() : nums2[j];

    if (maxLeftA <= minRightB && maxLeftB <= minRightA) {
      if ((m + n) % 2 == 0) {
        return (max(maxLeftA, maxLeftB) + min(minRightA, minRightB)) / 2.0;
      } else {
        return max(maxLeftA, maxLeftB).toDouble();
      }
    } else if (maxLeftA > minRightB) {
      imax = i - 1;
    } else {
      imin = i + 1;
    }
  }
  throw Exception("No median found");
}

void main() {
  print(findMedianSortedArrays([1, 3], [2])); // 2.0
  print(findMedianSortedArrays([1, 2], [3, 4])); // 2.5
  print(findMedianSortedArrays([0, 0], [0, 0])); // 0.0
  print(findMedianSortedArrays([], [1])); // 1.0
  print(findMedianSortedArrays([2], [])); // 2.0
}
