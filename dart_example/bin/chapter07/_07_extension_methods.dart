void main() {
  print('42'.padLeft(3));
  print('42'.parseInt());
}

extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }
}
