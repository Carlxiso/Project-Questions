import 'package:flutter/material.dart';
import './question.dart';

class Question extends StatelessWidget {
  final String text;

  Question(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
