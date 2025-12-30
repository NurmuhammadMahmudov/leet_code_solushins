bool isAnagram(String s, String t) {
  if (s.length != t.length) return false;
  List<int> temp = List<int>.filled(26, 0);

  for (var i = 0; i < s.length; i++) {
    temp[s.codeUnitAt(i) - 97]++;
    temp[t.codeUnitAt(i) - 97]--;
  }

  return !temp.any((e) => e != 0);
}

void main(List<String> args) {
  print(isAnagram('anagram', 'angaram'));
}
