import 'dart:math';

void main() {
  String a = "aabbc";

  print(beautySum(a));
}

int beautySum(String s) {
  int sum = 0;
  for (int i = 0; i < s.length; i++) {
    Map<String, int> a = {};
    for (int j = i; j < s.length; j++) {
      if (!a.containsKey(s[j])) {
        a[s[j]] = 1;
      } else {
        a[s[j]] = a[s[j]]! + 1;
      }

      final maxi = a.values.reduce(max);
      final mini = a.values.reduce(min);
      final diff = (maxi - mini);

      if (diff != 0) {
        sum += diff;
      }
    }
  }
  return sum;
}
