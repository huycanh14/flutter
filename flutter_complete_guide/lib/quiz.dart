import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex}
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
        /*Answer(_answerQuestion, "Answer 1"),
            Answer(_answerQuestionv2, "Answer 2"),*/
        /*aisedButton(
                child: Text(
                  "Change",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: _answerQuestionv2, 
                color: Colors.pinkAccent),
            RaisedButton(
              child: Text(questions[1]),
              onPressed: () => print("Answer 2 chosen"),
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: () {
                print("Answer 3");
              },
            ),*/
      ],
    );
  }
}
