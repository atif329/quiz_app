// ignore_for_file: deprecated_member_use, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  // ignore: use_key_in_widget_constructors
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue[300],
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
