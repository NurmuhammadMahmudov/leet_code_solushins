void main() {
  print(lengthOfLongestSubstring("abcabcbb"));
  print(lengthOfLongestSubstring("bbbbb"));
  print(lengthOfLongestSubstring("pwwkew"));
  print(lengthOfLongestSubstring(""));
  print(lengthOfLongestSubstring("aab"));
}

int lengthOfLongestSubstring(String s) {
  Set<String> seen = {};
  int left = 0;
  int maxLenght = 0;

  for (int right = 0; right < s.length; right++) {
    while (seen.contains(s[right])) {
      seen.remove(s[left]);
      left++;
    }
    seen.add(s[right]);
    maxLenght = maxLenght > (right - left + 1) ? maxLenght : (right - left + 1);
  }

  return maxLenght;
}
