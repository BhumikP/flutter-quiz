import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

    final Function selectHandler;
    final String answerText;
    Answer(this.selectHandler,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      margin:EdgeInsets.all(3),
      child:ElevatedButton(
        
        child: Text(answerText),
      
        onPressed: selectHandler,
        
      )    
    );
  }
}