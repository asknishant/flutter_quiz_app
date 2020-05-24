import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore,this.resetHandler);
  

  String get resultPhrase {
    String resultText = 'You did it';

    if (resultScore <= 100) {
      resultText = 'overwhelming!!! Your Score is'+ resultScore.toString();
    } else if (resultScore <= 30) {
      resultText = 'You are great'+resultScore.toString();
    } else if (resultScore <= 50) {
      resultText = 'Exellent'+resultScore.toString();
    } else {
      resultText = 'You are Awesome'+resultScore.toString();
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
          new Container(child: Card(color: Colors.blueGrey,),padding: EdgeInsets.all(20),),
           new Container(child: Text(resultPhrase,
            style: TextStyle(color: Colors.white,fontSize: 36,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center),
            ),
          FlatButton(onPressed: resetHandler, child: Text('Restart Quiz!')),
          FlatButton(onPressed: null, child: Text('Exit')),
        ],
      )
    );
  }
}
