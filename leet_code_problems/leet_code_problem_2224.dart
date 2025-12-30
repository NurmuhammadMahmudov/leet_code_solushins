// void main(List<String> args) async {
//   final String current = "11:00";
//   final String correct = "23:59";

//   int diff = toMinute(correct) - toMinute(current);
//   int index = 0;
//   int count = 0;
//   List<int> steps = [60, 15, 5, 1];
//   while (diff > 0) {
//     if (diff - steps[index] >= 0) {
//       diff -= steps[index];
//       print(steps[index]);
//       count += 1;
//     } else {
//       index += 1;
//     }
//   }

//   while (diff > 0) {
//     final int x = diff ~/ steps[index];
//     if (x != 0) {
//       await Future.delayed(Duration(milliseconds: 450));

//       print("=====================================");
//       print("\n\ndiff: $diff");
//       print("x: $x");
//       final y = (x * steps[index]);

//       print("y: $y");
//       diff -= y;
//       count += 1;
//       print("diff: $diff");
//       await Future.delayed(Duration(milliseconds: 450));
//     } else {
//       index += 1;
//     }
//   }

//   print("$count");
// }

// int toMinute(String time) {
//   final List<String> minutes = time.split(":");
//   return int.parse(minutes[0]) * 60 + int.parse(minutes[1]);
// }
