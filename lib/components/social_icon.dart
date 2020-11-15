import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

import '../constants.dart';




class SocalIcon extends StatelessWidget {
  final String iconSrc;
  final String text;
  final Function press;
  const SocalIcon({
    Key key,
    this.iconSrc,
    this.press,
    this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
//        margin: EdgeInsets.symmetric(horizontal: 2),
        padding: EdgeInsets.all(15),
//        decoration: BoxDecoration(
////          border: Border.all(
////            width: 2,
////            color: kPrimaryLightColor,
////          ),
//          shape: BoxShape.circle,
//        ),
        child: Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            Image.asset(
              iconSrc,
              height: 50,
              width: 50,
            ),
            Text(text,style: TextStyle(color: Colors.green),)
          ],
        )
      ),
    );
  }
}
