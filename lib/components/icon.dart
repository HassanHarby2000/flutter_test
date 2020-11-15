import 'package:flutter/material.dart';

class iconAndText extends StatelessWidget{
  String iconSrc,text;
  final Function press;
  iconAndText({this.text,this.iconSrc,this.press});
  @override
  Widget build(BuildContext context) {
  return GestureDetector(
      onTap: press,
      child: Column(
    mainAxisAlignment:  MainAxisAlignment.center,
    children: [
      Image.asset(
        iconSrc,
        height: 50,
        width: 50,
      ),
      Text(text)
    ],
  )
  );
  }

}