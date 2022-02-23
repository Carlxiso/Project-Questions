import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Questionary extends StatelessWidget {
//List of Attributes
  final List<Map<String, Object>> questionsList;
  final int questionSelected;

//Method Answer
  final void Function(int) answer;

//As it is final we need to initialize with a constructor
  Questionary({
    //requiered reports that these parameters are mandatory
    required this.questionsList,
    required this.questionSelected,
    required this.answer,
  });
  // Getter
  bool get isSelectedQuestion {
    return questionSelected < questionsList.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> x = isSelectedQuestion
        ? questionsList[questionSelected].cast()['answers']
        : [];
    return Column(
      children: <Widget>[
        Question(questionsList[questionSelected]['text'].toString()),
        ...x.map((resp) {
          return Answer(
            resp['text'].toString(),
            () => answer(int.parse(resp['score'].toString())),
          );
        }).toList(),
      ],
    );
  }
}
