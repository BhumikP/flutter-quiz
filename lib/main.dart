import 'package:flutter/material.dart';

import './quiz.dart';

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
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 5},
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 2},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Snake', 'score': 7},
        {'text': 'Lion', 'score': 5},
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Crockodile', 'score': 5}
      ]
    },
    {
      'questionText': 'What\'s your favourite Play?',
      'answers': [
        {'text': 'Classical', 'score': 1},
        {'text': 'kathak', 'score': 1},
        {'text': 'Pihu', 'score': 1}
      ]
    },
  ];
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My first app')),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            : Center(
                child: Text('Your score is ${_totalScore}!!'),
              ),
      ),
    );
  }
}
