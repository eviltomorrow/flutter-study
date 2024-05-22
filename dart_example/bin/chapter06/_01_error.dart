void main() {
  try {
    f();
  } on Exception {
    print('occur an exception!');
  }
}

void f() {
  throw FormatException('Expected at least 1 section!');
}

void f1() {
  throw 'Out of llamas!';
}

void f3() => throw UnimplementedError();

void f4() {
  try {
    occurAnError();
  } on OutOfMemoryError {
  } on Exception catch (e, s) {
    print('$e');
    print('$s');
  } finally {
    print('a');
  }
}

void f5() {
  try {
    f3();
  } catch (e) {
    rethrow;
  }
}

void occurAnError() {}
