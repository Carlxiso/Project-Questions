import 'package:flutter/material.dart';
import './questionary.dart';
import './message.dart';

main() {
  runApp(QuestionApp());
}

//The statfull component that we want to control its state
class _QuestionAppState extends State<QuestionApp> {
  var _questionSelected = 0;
  var _totalScore = 0;

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
  void _answer(int answer) {
    if (isSelectedQuestion) {
      setState(() {
        _questionSelected++;
        _totalScore += answer;
      });
    }
    print(_questionSelected);
    print(_totalScore);
  }

  void _restartQuestionary() {
    setState(() {
      _questionSelected = 0;
      _totalScore = 0;
    });
  }

// Getter
  bool get isSelectedQuestion {
    return _questionSelected < _questionsList.length;
  }

  //Method Decorator
  @override
  // Method Build
  Widget build(BuildContext context) {
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
            : Message('', _totalScore, _restartQuestionary),
      ),
    );
  }
}

//Component stateful
class QuestionApp extends StatefulWidget {
  //Method that will create the state of the Stateful compoent
  _QuestionAppState createState() {
    // TODO: implement createState
    return _QuestionAppState();
  }
}
