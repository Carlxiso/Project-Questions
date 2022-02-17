import 'package:flutter/material.dart';

main() {
  runApp(QuestionApp());
}

class QuestionApp extends StatelessWidget {
  //Método Decorator
  @override
  // Method build
  Widget build(BuildContext context) {
    return MaterialApp(
      // -- COMPONENTS TREE -- //
      //Component Scaffold
      home: Scaffold(
        //Component AppBar
        appBar: AppBar(
          title: Text('Questionary'),
        ),
        body: Text('Hi there!'),
      ),
    );
  }
}
