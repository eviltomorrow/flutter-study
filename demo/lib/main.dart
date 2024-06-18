import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Scaffold'),
          ),
          body: Column(
            children: [
              _buildContainer(),
              _buildDecorateBox(),
              _buildTextRich(),
              _buildElevatedButton(),
              const SizedBox(
                width: 300,
                // height: 40,
                child: TextFieldPage('用户名', false),
              ),
              const SizedBox(
                width: 300,
                // height: 40,
                child: TextFieldPage('密码', true),
              ),
              _buildRow(),
              SizedBox(
                width: 300,
                child: _buildFlex(),
              ),
              _buildWrap(),
            ],
          )),
    );
  }
}

Widget _buildContainer() {
  return Container(
    // margin: const EdgeInsets.only(top: 50, left: 120),
    constraints: const BoxConstraints.tightFor(width: 200, height: 200),
    decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [Colors.red, Colors.orange],
          center: Alignment.topLeft,
          radius: .98,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            offset: Offset(2.0, 2.0),
            blurRadius: 4.0,
          )
        ]),
    transform: Matrix4.rotationZ(.2),
    alignment: Alignment.center,
    child: const Text(
      '520',
      style: TextStyle(color: Colors.white, fontSize: 40.0),
    ),
  );
}

Widget _buildDecorateBox() {
  return Center(
    child: DecoratedBox(
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [Colors.red, Colors.orange]),
        borderRadius: BorderRadius.circular(3.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            offset: Offset(2.0, 2.0),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
        child: Text(
          'DecoratedBox',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  );
}

Widget _buildTextRich() {
  return const Text.rich(TextSpan(children: [
    TextSpan(text: 'Flutter 中文'),
    TextSpan(
      text: 'https://www.flutter.dev',
      style: TextStyle(color: Colors.blue),
    )
  ]));
}

Widget _buildElevatedButton() {
  return ElevatedButton(onPressed: () {}, child: const Text('Hello'));
}

class TextFieldPage extends StatefulWidget {
  final String label;
  final bool secret;

  const TextFieldPage(
    this.label,
    this.secret, {
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _TextFieldState();
}

class _TextFieldState extends State<TextFieldPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      print(_controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      decoration: InputDecoration(
        labelText: widget.label,
      ),
      obscureText: widget.secret,
      controller: _controller,
    );
  }
}

Widget _buildRow() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('Hello world'),
    ],
  );
}

Widget _buildFlex() {
  return Flex(
    direction: Axis.horizontal,
    children: [
      Expanded(
        flex: 1,
        child: Container(
          height: 80,
          color: Colors.red,
          child: const Center(
            child: Text('Red'),
          ),
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          height: 80,
          color: Colors.blue,
          child: const Center(
            child: Text('Blue'),
          ),
        ),
      ),
    ],
  );
}

Widget _buildWrap() {
  List<SizedBox> list = [];
  for (int i = 0; i < 10; i++) {
    list.add(const SizedBox(
      height: 30,
      width: 150,
      child: ColoredBox(
        color: Colors.blue,
        child: Text('Hello world'),
      ),
    ));
  }
  return Wrap(
    children: list,
  );
}
