import 'package:flutter/material.dart';
import 'package:flutter_basics/basics/gradient_container.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(Colors.black, Colors.white),
      ),
    ),
  );
}
