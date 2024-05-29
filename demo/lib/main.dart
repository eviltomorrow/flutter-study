import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ScaffoldPage(),
    );
  }
}

Widget _build520() {
  return Center(
    child: Container(
      // color: Colors.white,
      margin: const EdgeInsets.only(top: 20, left: 40),
      constraints: const BoxConstraints.tightFor(
        width: 200,
        height: 200,
      ),
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [Colors.green, Colors.orange],
          center: Alignment.topLeft,
          radius: .98,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            offset: Offset(2, 2),
            blurRadius: 4.0,
          )
        ],
      ),
      transform: Matrix4.rotationZ(.2),
      alignment: Alignment.center,
      child: const Text(
        "520",
        style: TextStyle(color: Colors.white, fontSize: 40),
      ),
    ),
  );
}

class ScaffoldPage extends StatefulWidget {
  const ScaffoldPage({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ScaffoldPageState();
  }
}

class _ScaffoldPageState extends State<ScaffoldPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print(_selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: '商城'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '我'),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
