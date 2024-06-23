import 'package:flutter/material.dart';

class ExampleButton extends StatelessWidget {
  const ExampleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildElevatedButton(),
        _buildTextButton(),
        _buildOutlinedButton(),
        _buildIconButton(),
        _buildWithIconButton(),
      ],
    );
  }
}

Widget _buildElevatedButton() {
  return ElevatedButton(
    onPressed: () {
      debugPrint('hello');
    },
    child: const Text('normal'),
  );
}

Widget _buildTextButton() {
  return TextButton(
    onPressed: () {},
    child: const Text('normal'),
  );
}

Widget _buildOutlinedButton() {
  return OutlinedButton(
    onPressed: () {},
    child: const Text('normal'),
  );
}

Widget _buildIconButton() {
  return IconButton(
    onPressed: () {},
    icon: const Icon(
      Icons.thumb_up,
    ),
  );
}

Widget _buildWithIconButton() {
  return OutlinedButton.icon(
    icon: const Icon(Icons.send),
    onPressed: () {},
    label: const Text('Hi'),
  );
}
