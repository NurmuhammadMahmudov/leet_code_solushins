import 'dart:math';

int maxArea(List<int> height) {
  int n = height.length;
  int l = 0;
  int r = n - 1;
  int area = 0;

  while (l < r) {
    area = max(area, min(height[l], height[r]) * (r - l).abs());
    if (height[l] < height[r]) {
      l++;
    } else {
      r--;
    }
  }
  return area;
}

void main(List<String> args) {
  maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7]);
  print('sa');
}
