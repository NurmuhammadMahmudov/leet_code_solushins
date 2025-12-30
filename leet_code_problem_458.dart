int poorPigs(int buckets, int minutesToDie, int minutesToTest) {
  final tests = minutesToTest ~/ minutesToDie;
  final states = tests + 1;
  int pigs = 0;
  int copacity = 1;
  while (copacity < buckets) {
    pigs++;
    copacity *= states;
  }
  return pigs;
}

void main(List<String> args) {}
