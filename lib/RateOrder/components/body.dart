import 'package:flutter/material.dart';
import 'package:sana_app/Home/home_screen.dart';
import 'package:sana_app/components/icon.dart';


import 'StarRating.dart';


class Body extends StatefulWidget {


  @override
  stateBody createState() => stateBody();
}
class stateBody extends State<Body> {
  double rating=3,iconSel=0;
  String lang="s",
         head=" " ,
      ordernumtilte=" ",
  successProcces=" " ,
  ServecRatetitle=" كيف كانت الخدمه ",
  commenttitle=" اترك تعليقا ",
  SendBtntitle=" ارسل "

  ;



//  void start() async{
//    final prefs = await SharedPreferences.getInstance();
//    setState(() {
//      this.lang= prefs.getString("lang");
//    });
//
//  }
  @override
  Widget build(BuildContext context)  {
    Size size = MediaQuery.of(context).size;
//    start();

    return  Container(
        height: size.height,
        width: double.infinity,
        child:  SingleChildScrollView(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
        Container(
          color: Colors.green,
          width: size.width  ,
          height: size.height *0.1,
          child:FlatButton(
            color: Colors.green,
            child: Text(
              head,
              style: TextStyle(color: Colors.white),
            ),
          ),)  ,

              ],
            ),
            Container(

              width: size.width  ,
              height: size.height *0.4,
              child:Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                        text: ordernumtilte,
                        style: TextStyle(fontSize: 20,color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: '\n'+successProcces,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54
                            ),
                          ),
                        ]
                    ),
                  ),
                 Row(children:[ Text(ServecRatetitle),]
                    ),
                   StarRating(
                  rating: rating,
                  onRatingChanged: (rating) => setState(() => this.rating = rating),
    ),

                  Divider(),

                ],
              ),),
          Container(

            width: size.width,
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(ServecRatetitle,style: TextStyle(color: Colors.green),),
            Container(
              width: size.width,
              child: Row(
                  children: [
                    Container(width: size.width *0.25,color:(iconSel==1)?Colors.green:Colors.white ,child:  iconAndText(press: (){setState(() {   iconSel=1;   });},iconSrc:"assets/icons/icon_compliment_excellent.png",text:" ممتاز "  ),),
                    Container(width: size.width *0.25,color:(iconSel==2)?Colors.green:Colors.white,child:  iconAndText(press: (){setState(() {   iconSel=2;   });},iconSrc:"assets/icons/icon_compliment_fast.png",text:" بسرعه ")),
                    Container(width: size.width *0.25,color:(iconSel==3)?Colors.green:Colors.white,child:  iconAndText(press: (){setState(() {   iconSel=3;   });} ,iconSrc:"assets/icons/icon_compliment_easy.png",text:" سهل " )),
                    Container(width: size.width *0.25,color:(iconSel==4)?Colors.green:Colors.white,child:  iconAndText(press: (){setState(() {   iconSel=4;   });},iconSrc:"assets/icons/icon_compliment_reliable.png",text:" موثوق " )),
                  ],
                )
            )
              ],
            ),
          ),

Container(
  width: size.width,

  child: Column(
    children: [
      Divider(),
    Row(children: [ Text(commenttitle)],) ,
  Container(
    width: size.width,
    child:  TextField(
      keyboardType: TextInputType.multiline,
      minLines: 1,//Normal textInputField will be displayed
      maxLines: 1,// when user presses enter it will adapt to it

      onChanged: (val){},
    ),
  ),
      Container(
        width: size.width,
        color: Colors.green,
        child:   FlatButton(

          child: Text(SendBtntitle,style: TextStyle(color: Colors.white),),
          onPressed: (){Navigator.popUntil(context, (route) => false)
          ;
          Navigator.push( context,  MaterialPageRoute(   builder: (context) { return HomeScreen();}, ),  );}
        ),
      )
    ],
  ),
)
          ]
        )
        )
    );
  }
}
