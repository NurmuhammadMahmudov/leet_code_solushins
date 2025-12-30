List<String> letterCombinations(String digits) {
  if (digits.isEmpty) return [];

  Map<String, String> phoneMap = {
    '2': 'abc',
    '3': 'def',
    '4': 'ghi',
    '5': 'jkl',
    '6': 'mno',
    '7': 'pqrs',
    '8': 'tuv',
    '9': 'wxyz'
  };

  List<String> result = [];

  void backtrack(int index, String current) {
    if (index == digits.length) {
      result.add(current);
      return;
    }

    String letters = phoneMap[digits[index]]!;
    for (var c in letters.split('')) {
      backtrack(index + 1, current + c);
    }
  }

  backtrack(0, "");
  return result;
}

void main(List<String> args) {
  print(letterCombinations("23"));
  print(letterCombinations(""));
}
