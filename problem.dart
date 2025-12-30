int findUnique(List<int> list) {
  var counter = <int, int>{};

  for (final n in list) {
    counter[n] = (counter[n] ?? 0) + 1;
  }

  return counter.entries.firstWhere((e) => e.value == 1).key;
}

void main(List<String> args) {
  List<int> listNumbers = [
    1,
    1,
    1,
    1,
    2,
    2,
    2,
    2,
    2,
    1,
    1,
    1,
    1,
    3,
    3,
    3,
    2,
    2,
    2,
    3,
    3,
    6,
    6,
    6,
    3,
    7,
    5,
  ];
  print(findUnique(listNumbers));
}
