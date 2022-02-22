import 'package:flutter/material.dart';
// import 'package:project_questions/question.dart';
// import 'package:flutter/widgets.dart';
import './questionary.dart';
import './message.dart';

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

  final List<Map<String, Object>> _questionsList = const [
    {
      'text': 'What is your favourite color?',
      'answers': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Brown', 'score': 10},
        {'text': 'Yellow', 'score': 10},
        {'text': 'Red', 'score': 10},
      ]
    },
    {
      'text': 'What is your favourite pet?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 10},
        {'text': 'Elephant', 'score': 10},
        {'text': 'Lion', 'score': 10},
      ]
    },
    {
      'text': 'What is your favourite Football Team?',
      'answers': [
        {'text': 'Bayern', 'score': 10},
        {'text': 'Barcelona', 'score': 10},
        {'text': 'At. Madrid', 'score': 10},
        {'text': 'Benfica', 'score': 10},
      ]
    }
  ];

  // Method Answer
  void _answer() {
    if (isSelectedQuestion) {
      setState(() {
        _questionSelected++;
      });
    }
    print(_questionSelected);
  }

// Getter
  bool get isSelectedQuestion {
    return _questionSelected < _questionsList.length;
  }

  //Método Decorator
  @override
  // Method build
  Widget build(BuildContext context) {
    // Código mais imperativo
    // for (String textAnswers in x) {
    //   answers.add(Answer(textAnswers, _answer));
    // }

    return MaterialApp(
      // -- COMPONENTS TREE -- //
      //Component Scaffold
      home: Scaffold(
        //Component AppBar
        appBar: AppBar(
          title: Text('Questionary'),
        ),
        body: isSelectedQuestion
            ? Questionary(
                questionsList: _questionsList,
                questionSelected: _questionSelected,
                answer: _answer,
              )
            //Showing the result
            : Message(''),
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
