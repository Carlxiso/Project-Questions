import 'package:flutter/material.dart';

main() {
  runApp(QuestionApp());
}

class QuestionApp extends StatelessWidget {
  @override
  // Method build
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Hey There. How have you been?'),
    );
  }
}
