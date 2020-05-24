
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
  //final String quizOver='You are done';
   final _questions= const
    [
      {
        'questionText' : 'Flutter is an __________ mobile application development framework created by Google.',
        'answers' : [{'text' : 'Open Source' , 'score': 10},
                     {'text' : 'Shareware' , 'score' :10},
                     {'text' : 'Both' , 'score' : 20},
                     {'text' : 'None of the above' , 'score' : 50}
                    ],
      },
      {
          'questionText' : 'Flutter is used to develop applications for __________ and __________.',
          'answers' : [{'text' : 'Android' , 'score' : 30},
                       {'text' : 'iOS' , 'score' : 15 },
                       {'text' : 'Both' , 'score' : 30},
                       {'text' : 'None' , 'score' : 40}
                      ],
      },
      {
        'questionText' : 'The first version of Flutter was known as codename __________ and ran on the Android operating system.?',
        'answers' :   [{'text' : 'Cloud' , 'score' : 30},
                       {'text' : 'Sky' , 'score' : 15 },
                       {'text' : 'Rain' , 'score' : 30},
                       {'text' : 'None' , 'score' : 40}
                      ],
      },
      {
        
        'questionText' : 'Due to App Store restrictions on dynamic code execution, Flutter apps use __________ compilation on iOS.?',
        'answers' :   [{'text' : 'Cloud ahead-of-time (AOT)' , 'score' : 30},
                       {'text' : 'ahed-of-code (AOC)' , 'score' : 15 },
                       {'text' : 'Both' , 'score' : 30},
                       {'text' : 'None' , 'score' : 40}
                      ],
      }
    ];

  var _questionsIndex=0;
  var _totalScore = 0;

  void resetQuiz(){
    setState(() {
      _questionsIndex=0;
      _totalScore=0;
    });
  }

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
      backgroundColor: Color.fromRGBO(22, 32, 55,3),
      body: _questionsIndex<_questions.length ? 
      Quiz(answerQuestions:_answerQuestions
      ,questionIndex : _questionsIndex,
      questions: _questions) : Result(_totalScore,resetQuiz),
      
      ),
      
   );
  }
}
