import 'package:demo/chapter02/api.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterError.onError = (FlutterErrorDetails detail) {
    debugPrint(detail.toString());
  };

  runApp(MaterialApp(
    title: 'App',
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Demo"),
        backgroundColor: Colors.blue,
        toolbarHeight: 100,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Chapter02.button(),
            Chapter02.image(),
            Chapter02.switchCheckbox(),
          ],
        ),
      ),
    ),
  ));
}
