import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler,this.answerText);
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
          child: Text(answerText,textAlign: TextAlign.left,),
          onPressed: selectHandler,
          //padding: EdgeInsets.only(left: 30,right: 30),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)
            )
          ),
          
          decoration: new BoxDecoration(borderRadius: BorderRadius.circular(15.0),
          border: new Border.all(color: Color.fromRGBO(67,200,230,50),width: 1.0), gradient: LinearGradient(
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