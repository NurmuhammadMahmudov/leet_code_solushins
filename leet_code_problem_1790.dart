bool areAlmostEqual(String s1, String s2) {
  if (s1 == s2) return true;
  List<int> diff = [];
  for (int i = 0; i < s1.length; i++) {
    if (s1[i] != s2[i]) diff.add(i);
  }
  if (diff.length != 2) return false;
  return s1[diff[0]] == s2[diff[1]] && s1[diff[1]] == s2[diff[0]];
}

void main() {
  print(areAlmostEqual("bank", "kanb"));
  print(areAlmostEqual("attack", "defend"));
  print(areAlmostEqual("kelb", "kelb"));
  print(areAlmostEqual("abcd", "dcba"));
}
