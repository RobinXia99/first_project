import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  String text;
  String text2;

  MyText(this.text, this.text2);

  @override 
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Text(text),
      Text(text2)
    ],);
  }

}

