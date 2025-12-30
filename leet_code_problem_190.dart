int reverseBits(int n) {
  int result = 0;

  for (var i = 0; i < 32; i++) {
    int bit = n & 1;
    result = (result << 1) | bit;
    n = n >> 1;
  }
  return result;
}

void main(List<String> args) {
  print(reverseBits(43261596));
}
