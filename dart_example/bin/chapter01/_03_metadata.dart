void main() {}

class Television {
  @Deprecated('no use')
  void activate() {}

  @Todo('', '')
  void noImplements() {}
}

class Todo {
  final String who;
  final String what;

  const Todo(this.who, this.what);
}
