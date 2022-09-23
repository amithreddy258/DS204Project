import 'package:flutter/material.dart';

void main() {
  runApp(Assignment1());
}

class Assignment1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAssignment1State();
  }
}

class _MyAssignment1State extends State<Assignment1> {
  static const _quotes = [
    'I\'m selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you can\'t handle me at my worst, then you sure as hell don\'t deserve me at my best.',
    'Two things are infinite: the universe and human stupidity; and I\'m not sure about the universe.',
    'You\'ve gotta dance like there\'s nobody watching,Love like you\'ll never be hurt,Sing like there\'s nobody listening,And live like it\'s heaven on earth.',
    'Don\'t walk in front of me… I may not follow Don\'t walk behind me… I may not lead Walk beside me… just be my friend',
    'Sorry!! We are out of quotes.'
  ];
  var _quoteIndex = 0;
  void _nextQuote() {
    setState(() {
      if (_quoteIndex < _quotes.length - 1) {
        _quoteIndex++;
      } else {
        _quoteIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment 1'),
        ),
        body: Center(
            child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(50),
              child: Text(
                _quotes[_quoteIndex],
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            TextButton(onPressed: _nextQuote, child: Text('Next Quote'))
          ],
        )),
      ),
    );
  }
}
