import 'package:flutter/material.dart';

import './button.dart';

class Answer extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function changeAnswer;

  Answer(
      {@required this.question,
      @required this.questionIndex,
      @required this.changeAnswer});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...(question[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((e) {
          return Button(
            e['text'],
            () => changeAnswer(e['text'], e['score']),
          );
        }).toList(),
      ],
    );
  }
}
