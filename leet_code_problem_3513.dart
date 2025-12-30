int uniqueXorTriplets(List<int> nums) {
  final n = nums.length;
  if (n == 1 || n == 2) return n;
  return 1 << n.bitLength;
}

void main(List<String> args) {
  print(uniqueXorTriplets([1, 2]));
}

