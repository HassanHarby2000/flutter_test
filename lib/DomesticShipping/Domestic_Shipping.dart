import 'package:flutter/material.dart';
import 'package:sana_app/components/Direction.dart';
import 'components/body.dart';

class DomesticShipping extends StatelessWidget {
  String apptitle=" شحن داخلي (من) " ,
  appsubtitle= " اختار وجهتك تحديد الفرع  ادناه حسب المنطقه "
  ;
  @override
  Widget build(BuildContext context) {
    return   Direction(
        child:    Scaffold(
                    appBar: AppBar(
                      backgroundColor: Colors.white,
                      leading: Icon(Icons.local_car_wash),
                      title:  RichText(
                      text: TextSpan(
                          text: apptitle,
                          style: TextStyle(fontSize: 20,color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                              text: '\n'+appsubtitle,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54
                              ),
                            ),
                          ]
                      ),
                    ),

                      elevation: 1.0,
//                      bottom: new PreferredSize(
//
//                          preferredSize: const Size.fromHeight(20.0)
//                      ),
                    ),

      body: Body(),
    )
    );
  }
}