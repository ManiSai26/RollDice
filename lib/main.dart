import 'package:first_app/Components/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [Colors.red, Colors.white, Colors.green],
        ),
      ),
    ),
  );
}
