import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';


class Questions extends StatefulWidget {
  final String questionText;
  Questions({this.questionText});
  @override
  _QuestionsState createState() {
        return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(padding: EdgeInsets.only(bottom:20.0,top: 30.0),
      child: new LinearPercentIndicator(
        padding: EdgeInsets.only(left:70.0,right: 50.0,top: 70.0),
        width: 390.0,
        animation: true,
        animationDuration: 100000,
        lineHeight: 30.0,
        percent: 1,
        linearStrokeCap: LinearStrokeCap.roundAll,
        linearGradient: LinearGradient(colors: [
          Colors.blue,Colors.red
        ]),
         center: Center(child: new Text("70%",style: TextStyle(color: Colors.white,))),
        //progressColor: Colors.red,
        backgroundColor: Color.fromRGBO(22, 32, 55,3),
      ),
    ),
    Padding(padding: EdgeInsets.only(top: 80 ,left: 50),
          child: Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child:Text(widget.questionText,
        style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.w700),
        textAlign: TextAlign.left),
        padding: EdgeInsets.only(bottom: 70),
         
      )
    )],
      
    );
  }
}

