import 'package:flutter/material.dart';
import './answers.dart';
import './Questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final int questionIndex;
  final Function answerQuestions;
  Quiz({
    @required this.answerQuestions,
    @required this.questionIndex,
    @required this.questions,
    }
  );

  @override
  Widget build(BuildContext context) {
    return 
      Column(
      children: [
        //Text('The questions are.'), 
        Questions(
          questions[questionIndex]['questionText']
          ),
          ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer){
            return Answer(() =>answerQuestions(answer['score']),answer['text']);
          }).toList()
      ],
    );
  }
}