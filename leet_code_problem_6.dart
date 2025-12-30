String convert(String s, int numRows) {
  if (numRows == 1 || s.length <= numRows) return s;

  final List<String> rows = List.generate(numRows, (_) => '');
  int index = 0;
  int direction = 1;

  for (var char in s.split('')) {
    rows[index] += char;
    if (index == 0) direction = 1;
    if (index == numRows - 1) direction = -1;

    index += direction;
  }
  return rows.join();
}

void main(List<String> args) {}
