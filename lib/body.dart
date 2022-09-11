import 'package:flutter/material.dart';
import 'package:nicopods_app/answer.dart';

import './question.dart';
import './answer.dart';
import './result.dart';

class Body extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BodyState();
  }
}

class _BodyState extends State<Body> {
  var _questionIndex = 0;
  var _totalScore = 0;
  var _question = [
    {
      'question': 'Have you ever use nicopods before?',
      'answer': [
        {'text': 'Yes', 'score': 20},
        {'text': 'No', 'score': -10},
      ],
    },
    {
      'question': 'Which strong have you try?',
      'answer': [
        {'text': '20-50', 'score': 40},
        {'text': '60-90', 'score': 60},
        {'text': '100-120', 'score': 100},
        {'text': '150<=', 'score': 120},
      ],
    },
    {
      'question': 'Was it too strong?',
      'answer': [
        {'text': 'A bit', 'score': -10},
        {'text': 'It was fine', 'score': 0},
        {'text': 'It was strong', 'score': -20},
        {'text': 'ther is still one under my lips', 'score': 20},
      ],
    },
    {
      'question': 'Do you smoke cigarette?',
      'answer': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': -10},
      ],
    },
    {
      'question': 'How many cigarette do you smoke?',
      'answer': [
        {'text': '5>=', 'score': -10},
        {'text': '6-10', 'score': -10},
        {'text': '1 package', 'score': 0},
        {'text': '2 packages', 'score': 10},
      ],
    },
    {
      'question': 'Do you want to try nicopods?',
      'answer': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': -10},
      ],
    },
  ];

  void _changeQuestion(String answer, int score) {
    _totalScore += (score);
    print(_totalScore);

    setState(() {
      if (answer == 'No') {
        _questionIndex = _questionIndex + 3;
      } else {
        _questionIndex = _questionIndex + 1;
      }
    });
    print(_questionIndex);
  }

  void restartSurvey() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _questionIndex < _question.length
          ? Column(
              children: [
                Question(_question[_questionIndex]['question']),
                /* ...(_question[_questionIndex]['answer']
                        as List<Map<String, Object>>)
                    .map((e) {
                  return Button(
                    e['text'],
                    () => changeQuestion(e['text'], e['score']),
                  );
                }).toList(),*/
                Answer(
                    question: _question,
                    questionIndex: _questionIndex,
                    changeAnswer: _changeQuestion),
              ],
            )
          : Result(_totalScore, restartSurvey),
    );
  }
}
