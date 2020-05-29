import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selecHandler;
  final String _answerQuestion;
  Answer(this.selecHandler, this._answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          child: Text(
            _answerQuestion,
            style: TextStyle(color: Colors.white),
          ),
          onPressed: selecHandler,
          color: Colors.pinkAccent),
    );
  }
}
