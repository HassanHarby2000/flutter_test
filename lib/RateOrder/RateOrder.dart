import 'package:flutter/material.dart';
import 'package:sana_app/components/Direction.dart';
import 'components/body.dart';

class RateOrder extends StatelessWidget {
  int type,city_id;
  RateOrder({this.type,this.city_id});
  @override
  Widget build(BuildContext context) {
    return  Direction(
        child:    Scaffold(

          body: Body(),
        )
    );
  }
}
