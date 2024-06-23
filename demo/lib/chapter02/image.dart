import 'package:flutter/material.dart';

class ExampleImage extends StatelessWidget {
  const ExampleImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildImage1(),
        _buildIcon1(),
      ],
    );
  }
}

Widget _buildImage1() {
  return const Image(
    image: AssetImage("assets/images/header.jpeg"),
    width: 180,
  );
}

Widget _buildIcon1() {
  String icons = "";
// accessible: 0xe03e
  icons += "\uE03e";
// error:  0xe237
  icons += " \uE237";
// fingerprint: 0xe287
  icons += " \uE287";
  return Text(
    icons,
    style: const TextStyle(
      fontFamily: "MaterialIcons",
      fontSize: 48.0,
      color: Colors.grey,
    ),
  );
}
