import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});
  @override
  Widget build(context) {
    return const Text(
      'Hello World!',
      style: TextStyle(
        fontSize: 40,
        color: Color.fromARGB(255, 202, 29, 43),
      ),
    );
  }
}
