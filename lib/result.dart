import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function restartSurvey;

  Result(this.score, this.restartSurvey);

  String get allOver {
    String pharse;
    if (score <= 10) {
      pharse = "10mg or maximum 20mg nicopods is your type";
    } else if (score <= 50) {
      pharse = "50mg is the optional strength";
    } else if (score <= 100) {
      pharse = "100mg of nicopods is your fighter";
    } else if (score < 130) {
      pharse = "120mg well you didnt start today";
    } else {
      pharse =
          "150mg You are a beast I bet that you are stuffed a naughty one at the moment";
    }
    return pharse;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
            child: Text(
              allOver,
              style: TextStyle(fontSize: 20, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
          RaisedButton(
            onPressed: restartSurvey,
            child: Text(
              "Restart suvey",
              style: TextStyle(fontSize: 18),
            ),
            color: Colors.black,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
