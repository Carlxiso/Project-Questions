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

  final List<Map<String, Object>> _questionsList = const [
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
    List<String> x = isSelectedQuestion
        ? _questionsList[_questionSelected].cast()['answers']
        : [];
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
            ? Column(
                children: [
                  Question(
                      _questionsList[_questionSelected]['text'].toString()),
                  //Abordagem mais declarativa
                  // O método map89 converte listas de Strings me Listas de widgets
                  ...x.map((t) => Answer(t, _answer)).toList(),
                  // Answer('Answer One', _answer),
                  // Answer('Answer Two', _answer),
                  // Answer('Answer Three', _answer),
                  // ElevatedButton(onPressed: _answer, child: Text('Answer One')),
                  // ElevatedButton(onPressed: _answer, child: Text('Answer Two')),
                  // ElevatedButton(onPressed: _answer, child: Text('Answer Three')),
                ],
              )
            : null,
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
