import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

main() {
  runApp(QuestionApp());
}

// O componente statfull que nnos queresmos controlar o seu estado
class QuestionAppState extends State<QuestionApp> {
  /* 
  var questionSelected = 0; - desta forma vai gerar problerma porque 
  os encontramos numa class sem estado Stateless 
  */
  var questionSelected = 0;

  // Method Answer
  void answer() {
    setState(() {
      questionSelected++;
    });
    print(questionSelected);
  }

  //Método Decorator
  @override
  // Method build
  Widget build(BuildContext context) {
    final List<String> questionsList = [
      'What is your favourite color?',
      'What is your favourite pet?'
    ];
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
            Text(questionsList[questionSelected]),
            ElevatedButton(onPressed: answer, child: Text('Answer One')),
            ElevatedButton(onPressed: answer, child: Text('Answer Two')),
            ElevatedButton(onPressed: answer, child: Text('Answer Three')),
          ],
        ),
      ),
    );
  }
}

//Componente stateful
class QuestionApp extends StatefulWidget {
  //Metodo que vai criar o estado do compoente Stateful
  QuestionAppState createState() {
    // TODO: implement createState
    return QuestionAppState();
  }
}
