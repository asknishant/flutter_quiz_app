import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore,this.resetHandler);
  


  String get resultPhrase {
    String resultText = 'You did it';

    if (resultScore <= 100) {
      resultText = 'Congratulations!!!\n Your Score is '+ resultScore.toString();
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
          new Container(child: Card(color: Colors.blueGrey,),padding: EdgeInsets.all(200),),
           new Container(child: Text(resultPhrase,
            style: TextStyle(color: Colors.white,fontSize: 36,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center),
            ),
          FlatButton(onPressed: resetHandler,
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
           child: Text('Restart Quiz!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w400),
              ),
           color: Colors.purple,
           
           ),
          FlatButton(onPressed: null, 
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
           child: Text('Exit!',
            style: TextStyle(
              color: Colors.green,
              fontSize: 22,
              fontWeight: FontWeight.w400),
              ),
           color: Colors.purple,
           onLongPress: () => Container(
             child: AlertDialog(
               title: Text('Time is up!!!',
               textAlign: TextAlign.left,
               style: TextStyle(color: Colors.red, fontSize: 24,fontWeight: FontWeight.bold),),
               content: Text('Do you want to Restart?'),
               actions: [
                 FlatButton(child: Text('Yes'),onPressed: null,),
                 FlatButton(child: Text('No'),onPressed: null,)
               ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
