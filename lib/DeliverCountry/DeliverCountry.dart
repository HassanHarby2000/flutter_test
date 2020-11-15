import 'package:flutter/material.dart';
import 'package:sana_app/components/Direction.dart';
import 'components/body.dart';

class DeliverCountry extends StatelessWidget {
  int type,city_id; String city_name,formOrTo;
  DeliverCountry({this.type,this.city_id,this.city_name,this.formOrTo});
  @override
  Widget build(BuildContext context) {
    return  Direction(
        child:    Scaffold(

      body: Body(type:type,city_id: city_id,city_name:city_name ,formOrTo: formOrTo ),
    )
    );
  }
}
