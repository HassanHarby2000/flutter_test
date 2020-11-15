import 'package:flutter/material.dart';

class Direction extends StatelessWidget{
  Widget child;
  Direction({this.child});
  @override
  Widget build(BuildContext context) {
    return   Directionality(
        textDirection: TextDirection.rtl,
        child: child
    );
  }

}