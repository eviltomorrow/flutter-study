typedef ListInt = List<int>;
ListInt a = [1, 2, 3];

typedef Comparable<T> = int Function(T a, T b);
int sort(int a, int b) => a - b;

void main() {
  // assert(sort is Comparable<int>);
}
