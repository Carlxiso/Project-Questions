import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final void Function() whenSelected;

  //Constructor
  Answer(this.text, this.whenSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue, // Background
          onPrimary: Colors.white, // Foreground
        ),
        onPressed: whenSelected,
        child: Text(text),
      ),
    );
  }
}
