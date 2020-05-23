import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  
  State<StatefulWidget> createState(){
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp> {
  final String quizOver='You are done';
   final _questions= const
    [
      {
        'questionText' : 'What\'s your name?',
        'answers' : [{'text' : 'Rabbit' , 'score': 10},
                     {'text' : 'Snake' , 'score' :10},
                     {'text' : 'Lion' , 'score' : 20},
                     {'text' : 'Elephant' , 'score' : 50}
                    ],
      },
      {
          'questionText' : 'What\'s favourite color?',
          'answers' : [{'text' : 'Blue' , 'score' : 30},
                       {'text' : 'Green' , 'score' : 15 },
                       {'text' : 'Yellow' , 'score' : 30},
                       {'text' : 'Black' , 'score' : 40}
                      ],
      },
      {
        'questionText' : 'What\'s your favourite car?',
        'answers' :   [{'text' : 'Mercedes' , 'score' : 30},
                       {'text' : 'Audi' , 'score' : 15 },
                       {'text' : 'Bentley' , 'score' : 30},
                       {'text' : 'Jaguar' , 'score' : 40}
                      ],
      },
    ];

  var _questionsIndex=0;
  var _totalScore = 0;
  void _answerQuestions(int score ){
    
    _totalScore+=score;
    setState(() {
       _questionsIndex++;
    });
    if(_questionsIndex<_questions.length){
      print('Over');
    }else print('We have more _questions');
    print(_questionsIndex);
  }

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First Flutter App'),
      ),
      body: _questionsIndex<_questions.length ? 
      Quiz(answerQuestions:_answerQuestions
      ,questionIndex : _questionsIndex,
      questions: _questions) : Result(_totalScore),
      )
    );
  }
}
