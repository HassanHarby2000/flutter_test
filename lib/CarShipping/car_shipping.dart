import 'package:flutter/material.dart';
import 'package:sana_app/components/Direction.dart';
import 'components/body.dart';

class CarShipping extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Direction(
        child:    Scaffold(

      body: Body(),
    )
    );
  }
}
