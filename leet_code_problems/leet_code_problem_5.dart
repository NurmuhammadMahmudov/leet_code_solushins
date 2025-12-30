String longestPalindrome(String s) {
  if (s.length < 2) return s;
  String result = '';
  int index = 0;
  while (index < s.length) {
    int j = index;
    while (j + 1 < s.length && s[j + 1] == s[index]) {
      j++;
    }
    int left = index, right = j;
    while (
        left - 1 >= 0 && right + 1 < s.length && s[left - 1] == s[right + 1]) {
      left--;
      right++;
    }

    if (right - left + 1 > result.length) {
      result = s.substring(left, right+1);
    }

    if (result.length == s.length) break;
    index = j + 1;
  }

  return result;
}

void main(List<String> args) {
  print(longestPalindrome('babad'));
}
