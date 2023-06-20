import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  const colors = [
    Color.fromARGB(255, 197, 172, 241),
    Colors.blueAccent,
  ];
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors),
      ),
    ),
  );
}
