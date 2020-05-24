import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;
  Questions(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 80 ,left: 50),
          child: Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child:Text(questionText,
        style: TextStyle(fontSize: 28,color: Colors.white,fontWeight: FontWeight.w700),
        textAlign: TextAlign.left),
        padding: EdgeInsets.only(bottom: 70),
         
      )
    );
  }
}