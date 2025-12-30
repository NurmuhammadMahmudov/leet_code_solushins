import 'dart:math';

int maxProfit(List<int> prices) {
  int left = 0;
  int maxProfit = 0;
  for (var right = 1; right < prices.length; right++) {
    if (prices[right] < prices[left]) {
      left = right;
    } else {
      maxProfit = max(maxProfit, prices[right] - prices[left]);
    }
  }

  return maxProfit;
}

void main(List<String> args) {
  print(maxProfit([7, 1, 5, 3, 6, 4]));
}
