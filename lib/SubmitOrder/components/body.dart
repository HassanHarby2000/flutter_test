import 'package:flutter/material.dart';
import 'package:sana_app/RateOrder/RateOrder.dart';
import 'package:sana_app/components/icon.dart';

class Body extends StatelessWidget {
  String  apptitle="",
      apptitlesubtitle1="",
          text1=" الراسل " ,  vartext1=" الراسل " ,
      text2=" المستلم " ,  vartext2=" المستلم " ,
          text3=" رقم الجوال " , vartext3=" رقم الجوال " ,
          text4=" الخدمات ",  vartext4=" الخدمات ",
          text5= " سياره ",vartext5= " سياره ",
          text6=" المصدر " , vartext6=" المصدر " ,
          text7=" الوجهه ",vartext7=" الوجهه ",
          text8= " تاريخ الشحن ",  vartext8= " تاريخ الشحن ",
          text9= " تاريخ الوصول ", vartext9= " تاريخ الوصول ",
          text10=" التكلفه ",  vartext10=" 500 ",
           text11= " الضريبه " ,   vartext11= " 20 "
          ;
  Body({this.vartext1=" الراسل ",this.vartext2=" المستلم " ,this.vartext3=" رقم الجوال ",
  this.vartext4=" الخدمات ",this.vartext5= " سياره ",this.vartext6=" المصدر "
    ,this.vartext7=" الوجهه ",this.vartext8= " تاريخ الشحن ",this.vartext9=" تاريخ الوصول ",this.vartext10=" 500 ",this.vartext11=" 20 "
     });
    String stringnull(String s){return(s==null)?"":s;}
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(

        child:

          Column(
mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.green),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    Image.asset(
                      "assets/icons/icon_car_shipping.png",
                      width: 50,
                    ),
                    SizedBox(width: 20, height: 20,),
                    RichText(
                      text: TextSpan(
                          text: apptitle,
                          style: TextStyle(fontSize: 20, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                              text: '\n' + apptitlesubtitle1,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54
                              ),
                            ),
                          ]
                      ),
                    ),
                  ],
                ),
                Divider(),
                Row( children:[      Text(text1),Text(stringnull(vartext1))]),
                Row( children:[      Text(text2), Text(stringnull(vartext2))]),
                Row( children:[      Text(text3),Text(stringnull(vartext3))]),
                Row( children:[      Text(text4), Text(stringnull(vartext4))]),
                Row( children:[      Text(text5),Text(stringnull(vartext5))]),
                Row( children:[      Text(text6),Text(stringnull(vartext6))]),
                Row( children:[      Text(text7),Text(stringnull(vartext7))]),
                Row( children:[      Text(text8), Text(stringnull(vartext8))]),
                Row( children:[      Text(text9), Text(stringnull(vartext9))]),
                Row( children:[      Text(text10),Text(stringnull(vartext10))]),
                Row( children:[      Text(text11),Text(stringnull(vartext11))]),
//                Row(children: [ExpansionTile(
//
//                )],),
//                Row( children: [
                  ExpansionTile(
 title: Text(" طريقه الدفع "),
                  children: [
                    Container(
                      width: size.width,
                      child: Row(
    children: [
      Container(width:  size.width*0.5 ,
          child:iconAndText(iconSrc:"assets/icons/image_cash_payment.png", text: " نقدي ",
        press: (){Navigator.push(  context,
        MaterialPageRoute(
          builder: (context) {
            return RateOrder();
          },
        ),
      );},)) ,
      Container(width:  size.width*0.5 ,child: iconAndText(iconSrc:"assets/icons/image_cash_payment.png", text: " بطاقه ائتمان ",)) ,
    ],
    )

                    )
                  ],
                )
//                ],
  

              ]
          )


    );
  }
}