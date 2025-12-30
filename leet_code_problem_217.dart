bool containsDuplicate(List<int> nums) => nums.length != nums.toSet().length;

void main(List<String> args) {
  print(containsDuplicate([1, 2, 3, 1]));
}