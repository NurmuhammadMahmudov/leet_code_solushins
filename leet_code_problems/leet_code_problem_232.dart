class MyQueue {

  final List<int> _outStack =[];
  final List<int> _inStack =[];

  MyQueue();
  
  void push(int x) => _inStack.add(x);
  
  int pop() {
    _moveIfNeeded();
    return _outStack.removeLast();
  }
  
  int peek() {
    _moveIfNeeded();
    return _outStack.last;
  }
  
  bool empty() => _inStack.isEmpty && _outStack.isEmpty;

  void _moveIfNeeded(){
    if (_outStack.isEmpty) {
      while(_inStack.isNotEmpty){
        _outStack.add(_inStack.removeLast());
      }
    }
  }
}
