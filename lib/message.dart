import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final String text;
  final int score;
  final void Function() whenRestartQuestionary;

  Message(this.text, this.score, this.whenRestartQuestionary);

  String get result {
    if (score < 8) {
      return 'Would you like to repeat?';
    } else if (score < 12) {
      return 'Thank you';
    } else if (score < 16) {
      return 'Impressive. Your help will be very important.';
    } else {
      return 'Wonderful! You are so kind.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            result,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        ),
        TextButton(
          onPressed: whenRestartQuestionary,
          child: Text(
            'Restart Questionary',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        )
      ],
    );
  }
}

class ElevateButton {}
