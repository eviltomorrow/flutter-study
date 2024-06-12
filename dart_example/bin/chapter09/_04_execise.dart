import 'dart:io';
import 'package:http/http.dart' as http;

main() {
  _startMethod();

  print("C开始");
}

Future _startMethod() async {
  print("A开始执行这个方法~");
  print(await getHttp());
  print("A执行结束");
}

Future<String> getHttp() async {
  final result = await http.get(Uri.parse("https://www.baidu.com"));
  return "请求到的数据：" + result.body.toString();
}

doTest() async {
  sleep(Duration(seconds: 10));
}
