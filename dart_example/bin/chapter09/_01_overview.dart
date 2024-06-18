import 'dart:io';

void main() {
  print('begin');
  syncFunc();
  asyncFunc();
  asyncFunc2();
  var f = asyncFunc3();
  f.then((_) {
    print('asyncFunc3 then');
  });
  closeFunc(() {
    return () {
      print('hello');
    };
  });
  // closeFunc(() async {
  //   print('close run2');
  // });
  print('end');
}

void syncFunc() {
  sleep(Duration(seconds: 1));
  print('syncFunc complete');
}

void asyncFunc() async {
  print('asyncFunc complete');
}

void asyncFunc2() {
  Future(() {
    print('asyncFunc2');
  });
}

Future asyncFunc3() {
  return Future(() {
    print('asyncFunc3');
  });
}

void asyncFunc4() async {
  print('asyncFunc4 begin');
}

void closeFunc(Function body()) {
  body()();
}
