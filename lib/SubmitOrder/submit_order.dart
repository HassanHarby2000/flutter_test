import 'package:flutter/material.dart';
import 'package:sana_app/components/Direction.dart';
import 'components/body.dart';

class SubmitOrder extends StatelessWidget {
  String apptitle=" البسامي يخدمكم !" ,
      priceText=" المجموع شامل الضريبه ";

  var vartext5;

  var vartext3;

  var vartext4;

  var vartext1;

  var vartext8;

  var vartext9;

  var vartext11;

  var vartext10;

  var vartext2;

  var vartext7;

  var vartext6;
  SubmitOrder({this.vartext1,this.vartext2,this.vartext3,this.vartext4,this.vartext5,this.vartext6
  ,this.vartext7,this.vartext8,this.vartext9,this.vartext10,this.vartext11 });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return   Direction(
        child:   Scaffold(

          body: Body(vartext1:vartext1 ,vartext2:vartext1 ,vartext3: vartext3,vartext4: vartext4,vartext5: vartext5, vartext6:vartext6
          ,vartext7: vartext7,vartext8: vartext8, vartext9:vartext9,vartext10: vartext10, vartext11: vartext11),
          bottomNavigationBar: Container(
color: Colors.green,
          width: size.width  ,
          child:FlatButton(
           color: Colors.green,
           child: Text(
            priceText,
            style: TextStyle(color: Colors.lime),
          ),
        ),)  ,
        )
    );
  }
}
