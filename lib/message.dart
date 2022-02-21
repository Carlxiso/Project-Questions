import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  // const Message({ Key? key }) : super(key: key);

  final String text;

  Message(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Center(
        child: Text(
          'Congratulations! Questionary is completed.',
          style: TextStyle(
            fontSize: 28,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
