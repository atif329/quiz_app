// ignore_for_file: deprecated_member_use, avoid_print, prefer_const_constructors
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(QuizApp());
}

// ignore: use_key_in_widget_constructors
class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  final questions = const [
    {
      'questionText': 'What is your name?',
      'answer': ['Atif', 'Qasim', 'Huzaifa', 'Ahmed'],
    },
    {
      'questionText': 'What/s your favourite animal?',
      'answer': ['Cat', 'Rabbit', 'Snake'],
    },
    {
      'questionText': 'What is your favourite color?',
      'answer': ['Black', 'Green'],
    },
    {
      'questionText': 'What is favourite fruit?',
      'answer': ['Apple', 'Mango', 'Banana', 'Cherry'],
    },
    {
      'questionText': 'What is favourite sports name?',
      'answer': ['Cricket', 'Football', 'Basketball'],
    },
    {
      'questionText': 'Where does your happiness belongs to?',
      'answer': ['Baka', 'Wah Cantt', 'Soan Garden', 'None'],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < questions.length) {
      print('We have more questions');
    } else {
      print('We are finished with the quiz');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'] as String,
                  ),
                  ...(questions[_questionIndex]['answer'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text(
                  'CONGRATULATIONS!\nGO AND KILL THE WAVES',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
      ),
    );
  }
}
