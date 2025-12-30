
import '../development_dart.dart';

int countPairs(List<int> nums) {
  var result = 0;
  for (var i = 0; i < nums.length - 1; i++) {
    for (var j = i + 1; j < nums.length; j++) {
      var n1 = nums[i].toString();
      var n2 = nums[j].toString();
      if (n1.length < n2.length) n1 = '0' * (n2.length - n1.length) + n1;
      if (n1.length > n2.length) n2 = '0' * (n1.length - n2.length) + n2;
      int count = 0;
      for (var x = 0; x < n2.length; x++) {
        if (n1[x] != n2[x]) count += 1;
      }
      var sortedN1 = n1.split('')..sort();
      var sortedN2 = n2.split('')..sort();

      if (count <= 2 && listsEqual(sortedN2, sortedN1)) result += 1;
    }
  }

  return result;
}
void main(List<String> args) {
  // print(
  //     'EXAMPLE-1 ANSWER [3,12,30,17,21] expected => 2\nAnswer => ${countPairs([
  //       3,
  //       12,
  //       30,
  //       17,
  //       21
  //     ])}\n\n');
  // print('EXAMPLE-2 ANSWER [1,1,1,1,1] expected => 10\nAnswer => ${countPairs([
  //       1,
  //       1,
  //       1,
  //       1,
  //       1
  //     ])}\n\n');
  // print('EXAMPLE-3 ANSWER [123,231] expected => 0\nAnswer => ${countPairs([
  //       123,
  //       231
  //     ])}');

  // print(
  //     'EXAMPLE-4 ANSWER [8,12,5,5,14,3,12,3,3,6,8,20,14,3,8] expected => 12\nAnswer => ${countPairs([
  //       8,
  //       12,
  //       5,
  //       5,
  //       14,
  //       3,
  //       12,
  //       3,
  //       3,
  //       6,
  //       8,
  //       20,
  //       14,
  //       3,
  //       8
  //     ])}');

  // print(
  //     '[5,12,8,5,5,1,20,3,10,10,5,5,5,5,1] EXPECTED => 27\nANSWER => ${countPairs([
  //       5,
  //       12,
  //       8,
  //       5,
  //       5,
  //       1,
  //       20,
  //       3,
  //       10,
  //       10,
  //       5,
  //       5,
  //       5,
  //       5,
  //       1
  //     ])}');
}
