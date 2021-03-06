import 'package:flutter/material.dart';
import './answers.dart';
import './Questions.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
        Questions(questionText:
          questions[questionIndex]['questionText']
          ),
          ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer){
            return Answer(fn:() =>answerQuestions(answer['score']) ,answerText: answer['text']);
          }).toList(),

          Container(
        width: 80,
        height: 40,
        child: FlatButton(  
          textColor: Colors.white,
          child: Text('Next',textAlign: TextAlign.left,),
          onPressed: null,
          ),
          
          decoration: new BoxDecoration(borderRadius: BorderRadius.circular(30.0),
          border: new Border.all(color: Color.fromRGBO(67,200,230,50),width: 1.0), gradient: LinearGradient(
                  colors: <Color>[
                    Color.fromRGBO(255, 110, 125,30),
                    Color.fromRGBO(255, 102, 187,30),
                    Color.fromRGBO(255, 101, 220,30),
                    Color.fromRGBO(255, 137, 255,30),
                    Color.fromRGBO(255, 175, 255,30),
                  ],
          ),
        )
      ),
          
      ],
    );
  }
}