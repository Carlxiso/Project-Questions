import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Questionary extends StatelessWidget {
// Lista de Atributos
  final List<Map<String, Object>> questionsList;
  final int questionSelected;
//Método Answer
  final void Function(int) answer;

//Como é final nos precisamos de inicializar com um construtor
  Questionary({
    //requiered comunica que estes parametros sao obrigatórios
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
