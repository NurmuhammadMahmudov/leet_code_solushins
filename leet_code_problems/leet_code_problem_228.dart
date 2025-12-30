List<String> summaryRanges(List<int> nums) {
  if (nums.length <= 1) return nums.map((e) => e.toString()).toList();
  
  List<String> ranges = [];
  int start = nums[0];
  int end = nums[0];

  for (var i = 0; i < nums.length - 1; i++) {
    if (nums[i + 1] - nums[i] == 1) {
      end = nums[i + 1];
    } else {
      if (start == end) {
        ranges.add(start.toString()); 
      } else {
        ranges.add('$start->${end}');  
      }
      start = nums[i + 1];
      end = nums[i + 1];
    }
  }

  if (start == end) {
    ranges.add(start.toString());
  } else {
    ranges.add('$start->${end}');
  }

  return ranges;
}

void main(List<String> args) {
  print(summaryRanges([0, 1, 2, 4, 5, 7])); 
}