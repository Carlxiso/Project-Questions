import 'package:flutter/material.dart';
import 'package:project_questions/question.dart';
import 'package:flutter/widgets.dart';
import './question.dart';
import './answer.dart';

main() {
  runApp(QuestionApp());
}

// O componente statfull que nos queresmos controlar o seu estado
class _QuestionAppState extends State<QuestionApp> {
  /* 
  var _questionSelected = 0; - desta forma vai gerar problerma porque 
  os encontramos numa class sem estado Stateless 
  */
  var _questionSelected = 0;

  // Method Answer
  void _answer() {
    setState(() {
      _questionSelected++;
    });
    print(_questionSelected);
  }

  //Método Decorator
  @override
  // Method build
  Widget build(BuildContext context) {
    final List<Map<String, Object>> questionsList = [
      {
        'text': 'What is your favourite color?',
        'answers': [
          'Blue',
          'Brown',
          'Yellow',
          'Red',
        ]
      },
      {
        'text': 'What is your favourite pet?',
        'answers': [
          'Dog',
          'Cat',
          'Elephant',
          'Lion',
        ]
      },
      {
        'text': 'What is your favourite Football Team?',
        'answers': [
          'Bayern',
          'Barcelona',
          'At. Madrid',
          'Benfica',
        ]
      }
    ];
    // Código mais imperativo
    List<Widget> answers = [];
    for (String textAnswers
        in questionsList[_questionSelected].cast()['answers']) {
      answers.add(Answer(textAnswers, _answer));
    }

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
            Question(questionsList[_questionSelected]['text'].toString()),
            ...answers,
            // Answer('Answer One', _answer),
            // Answer('Answer Two', _answer),
            // Answer('Answer Three', _answer),
            // ElevatedButton(onPressed: _answer, child: Text('Answer One')),
            // ElevatedButton(onPressed: _answer, child: Text('Answer Two')),
            // ElevatedButton(onPressed: _answer, child: Text('Answer Three')),
          ],
        ),
      ),
    );
  }
}

//Componente stateful
class QuestionApp extends StatefulWidget {
  //Metodo que vai criar o estado do compoente Stateful
  _QuestionAppState createState() {
    // TODO: implement createState
    return _QuestionAppState();
  }
}
