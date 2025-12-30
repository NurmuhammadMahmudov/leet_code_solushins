int hammingWeight(int n) {
  int count = 0;
  while (n != 0) {
    n &= (n - 1);
    count++;
  }
  return count;
}

void main(List<String> args) {
  print('Result: ${hammingWeight(11)}');
  print('Result: ${hammingWeight(128)}');
  print('Result: ${hammingWeight(2147483645)}');
}
