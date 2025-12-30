List<int> mergeSort(List<int> lst) {
  if (lst.length <= 1) {
    return lst;
  }
  int mid = lst.length ~/ 2;
  List<int> left = lst.sublist(0, mid);
  List<int> right = lst.sublist(mid);
  left = mergeSort(left);
  right = mergeSort(right);
  return _merge(left, right);
}

List<int> _merge(List<int> left, List<int> right) {
  List<int> natija = [];
  int i = 0, j = 0;
  while (i < left.length && j < right.length) {
    if (left[i] <= right[j])
      natija.add(left[i++]);
    else
      natija.add(right[j++]);
  }

  while (i < left.length) natija.add(left[i++]);
  while (j < right.length) natija.add(right[j++]);
  return natija;
}

int binarySearch(List<int> nums, int target) {
  int left = 0, right = nums.length - 1;
  while (left <= right) {
    int midIndex = (left + right) ~/ 2;
    if (nums[midIndex] == target) return midIndex;
    if (nums[midIndex] < target) {
      left = midIndex + 1;
    } else {
      right = midIndex - 1;
    }
  }
  return -1;
}

int lowerBound(List<int> nums, int target) {
  int left = 0, right = nums.length;
  while (left < right) {
    int mid = (left + right) ~/ 2;
    if (nums[mid] < target) {
      left = mid + 1;
    } else {
      right = mid;
    }
  }
  return left;
}

bool listsEqual<T>(List<T> a, List<T> b) {
  if (a.length != b.length) return false;
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}
