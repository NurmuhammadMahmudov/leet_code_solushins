List<String> generateParenthesis(int n) {
  List<String> result = [];

  void backTrack(int open, int close, String current, int length) {
    if (open == close && open + close == n * 2) {
      result.add(current);
      return;
    }
    if (open < n) {
      backTrack(open + 1, close, current + '(', length);
    }

    if (close < open) {
      backTrack(open, close + 1, current + ')', length);
    }
  }

  backTrack(0, 0, '', 0);
  return result;
}

void main(List<String> args) {
  print(generateParenthesis(3));
  print(generateParenthesis(1));
}
