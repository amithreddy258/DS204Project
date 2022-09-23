import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    var resultText = 'Congratulations!! You completed the quiz.';
    if (resultScore >= 24) {
      resultText = 'You are truely a pure soul<3<3';
    } else if (resultScore >= 10) {
      resultText = 'You are just a normal person :)';
    } else if (resultScore > 5) {
      resultText = 'You are a bit strange :(';
    } else {
      resultText = 'You have a real evil soul :|';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        // ignore: deprecated_member_use
        FlatButton(
          child: Text('Restart Quiz'),
          onPressed: resetHandler,
          textColor: Colors.blue,
        )
      ],
    ));
  }
}
