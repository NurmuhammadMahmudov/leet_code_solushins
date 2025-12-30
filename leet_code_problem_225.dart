class MyStack {
  final List<int> _queue = [];

  MyStack();

  void push(int x) {
    _queue.add(x);

    for (int i = 0; i < _queue.length - 1; i++) {
      _queue.add(_queue.removeAt(0));
    }
  }

  int pop() => _queue.removeAt(0);

  int top() => _queue.first;

  bool empty() => _queue.isEmpty;
}
