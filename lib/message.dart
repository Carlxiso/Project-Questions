import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  // const Message({ Key? key }) : super(key: key);

  final String text;
  final int score;

  Message(this.text, this.score);

  String get result {
    if (score < 8) {
      return 'Congratulations! Questionary is completed.AAAA';
    } else if (score < 12) {
      return 'Congratulations! Questionary is completed.BBBB';
    } else if (score < 16) {
      return 'Congratulations! Questionary is completed.CCCC';
    } else {
      return 'Congratulations! Questionary is completed.DDDD';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Center(
        child: Text(
          result,
          style: TextStyle(
            fontSize: 28,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
