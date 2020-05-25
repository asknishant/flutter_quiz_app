import 'package:flutter/material.dart';


class Answer extends StatefulWidget {
  final Function fn;
  final String answerText;
  Answer({this.fn,this.answerText});
  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {

  final rightAnswers=['Open Source','Both','b','a'];
  
  Color right=Colors.green;
  Color wrong=Colors.red;
  Color btnColor=Color.fromRGBO(22, 155, 155,30);

  Color checkResult(String x){
   
     if(x==rightAnswers[0] || x==rightAnswers[1])
       return right;
    else 
      return wrong;
  } 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 300,
        height: 50,
        child: FlatButton(  
          textColor: Colors.white,
          //color: Colors.blue,
          child: Text(widget.answerText,textAlign: TextAlign.left,),
          onPressed: widget.fn,
          //padding: EdgeInsets.only(left: 30,right: 30),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)
            )
          ),
          
          decoration: new BoxDecoration(borderRadius: BorderRadius.circular(15.0),
          border: new Border.all(color: checkResult(widget.answerText) ,width: 2.0), gradient: LinearGradient(
                  colors: <Color>[
                    Color.fromRGBO(22, 32, 55,30),
                    Color.fromRGBO(22, 32, 55,30),
                  ],
          ),
        )
      ),
    );
  }
}
