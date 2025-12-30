int addDigits(int num) =>
    switch (num) { >= 0 && <= 9 => num, _ => addDigits(parseNums(num)) };

int parseNums(int n) {
  int count = 0;
  for (final i in n.toString().split('')) {
    count += int.parse(i);
  }
  return count;
}

void main(List<String> args) {
  print(addDigits(11119));
}
