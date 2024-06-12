import 'dart:io';

import 'package:http/http.dart' as http;

void main() async {
  http.get(Uri.parse("https://www.baidu.com")).then((response) {
    if (response.statusCode == 200) {
      print("success! baidu");
    }
  });
  http.get(Uri.parse("https://www.baidu.com")).then((response) {
    if (response.statusCode == 200) {
      print("success! baidu2");
    }
  });
  print("hi");
  final content = await _readFileAsync("_01_overview.dart");
  print(content);
  print("over");
}

Future<String> _readFileAsync(String path) async {
  final file = File(path);
  return file.readAsString().then((_) {
    return 'callback';
  });
}
