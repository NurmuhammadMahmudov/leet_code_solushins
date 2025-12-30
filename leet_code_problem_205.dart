bool isIsomorphic(String s, String t) {
  if (s.length != t.length) return false;
  Map<String, String> mapST = {};
  Map<String, String> mapTS = {};

  for (var i = 0; i < s.length; i++) {
    final sc = s[i];
    final tc = t[i];

    if (mapST.containsKey(sc)) {
      if (mapST[sc] != tc) return false;
    } else {
      mapST[sc] = tc;
    }

    if (mapTS.containsKey(tc)) {
      if (mapTS[tc] != sc) return false;
    } else {
      mapTS[tc] = sc;
    }
  }
  return true;
}

void main() {
  print(isIsomorphic("egg", "add")); // true
  print(isIsomorphic("foo", "bar")); // false
  print(isIsomorphic("paper", "title")); // true
}
