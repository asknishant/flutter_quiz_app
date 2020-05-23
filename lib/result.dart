import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  Result(this.resultScore);
  
  String get resultPhrase {
    String resultText = 'You did it'; 

      if(resultScore <= 100) {
        resultText = 'You are Awesome';
      }  else if(resultScore <= 30) {
        resultText = 'You are great';
      } else if(resultScore <=50) {
        resultText = 'Exellent';
      }else{
        resultText = 'overwhelming';
      }


    return resultText;
  }
 
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(resultPhrase ,
    style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),
    textAlign: TextAlign.center)
    );
  }
}