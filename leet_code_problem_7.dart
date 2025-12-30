int reverse(int x) {
  const int INT_MAX = 2147483647;
  const int INT_MIN = -2147483648;
  int numX = int.parse(x.abs().toString().split('').reversed.join());
  final result = x < 0 ? numX * (-1) : numX;
  if ((result < 0 && result < INT_MIN) || result > INT_MAX) {
    return 0;
  } else {
    return result;
  }
}

void main(List<String> args) {
  print(reverse(1534236469));
}
