import 'package:flutter/material.dart';
import 'package:test_flutter/gradient_container.dart';

class StyledTexts extends GradientContainer {
  const StyledTexts(this.text, {super.key})
      : super(Colors.grey, Colors.green);

  final String text;

  @override
  Widget build(context){
    return Text(
      text,
      style: const TextStyle(
          color: Colors.white,
          fontSize: 36
      ),
    );
  }
}