import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() {
  runApp(QuestionApp());
}

class QuestionApp extends StatelessWidget {
  final List<String> questionsList = [
    'What is your favourite color?',
    'What is your favourite pet?'
  ];

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
        body: Column(
          children: [
            Text(questionsList[0]),
            ElevatedButton(onPressed: null, child: Text('Answer One')),
            ElevatedButton(onPressed: null, child: Text('Answer Two')),
            ElevatedButton(onPressed: null, child: Text('Answer Three')),
          ],
        ),
      ),
    );
  }
}
