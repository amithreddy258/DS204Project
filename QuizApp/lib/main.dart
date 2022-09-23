import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What is your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 0},
        {'text': 'White', 'score': 10},
        {'text': 'Other', 'score': 5}
      ]
    },
    {
      'questionText': 'What is your favorite animal?',
      'answers': [
        {'text': 'Black Panther', 'score': 0},
        {'text': 'Snow Leopard', 'score': 10},
        {'text': 'Other', 'score': 5}
      ]
    },
    {
      'questionText': 'What is your favorite place?',
      'answers': [
        {'text': 'Norway', 'score': 0},
        {'text': 'Siberia', 'score': 10},
        {'text': 'Other', 'score': 5}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      if (_questionIndex < _questions.length) {
        _questionIndex++;
      }
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return CupertinoApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First APP'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
