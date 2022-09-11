import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String answer;
  final Function answerIndex;

  Button(this.answer, this.answerIndex);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: RaisedButton(
        child: Text(
          answer,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        onPressed: answerIndex,
        color: Color.fromARGB(255, 11, 33, 52),
      ),
    );
  }
}
