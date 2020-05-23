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
        'answers' : ['Rabbit','Snake','Lion','Elephant'],
      },
      {
          'questionText' : 'What\'s favourite color?',
          'answers' : ['Blue','Green','Yellow','Black'],
      },
      {
        'questionText' : 'What\'s your favourite car?',
        'answers' : ['car1','car2','car3','car4'],
      },
    ];

  var _questionsIndex=0;
  void _answerQuestions(){
    
    
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
      questions: _questions) : Result(over: quizOver)
      )
    );
  }
}
