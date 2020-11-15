import 'package:flutter/material.dart';
import 'package:sana_app/components/Direction.dart';
import 'components/body.dart';

class DeliverCity extends StatelessWidget {
  int type,formcountryid ;
 String formcountry ,formOrTo ;
  DeliverCity({this.type,this.formOrTo,this.formcountry,this.formcountryid  });
  @override
  Widget build(BuildContext context) {
    return  Direction(
        child:    Scaffold(

      body: Body(type: type,formcountry: formcountry,formcountryid: formcountryid,formOrTo: formOrTo,),
    )
    );
  }
}
