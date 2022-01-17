import 'package:flutter/cupertino.dart';

class Question extends StatelessWidget {
  final String questionText;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
