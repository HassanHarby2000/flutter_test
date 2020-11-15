import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sana_app/CreateOrder/creat_order.dart';
import 'package:sana_app/DeliverCity/DeliverCity.dart';
import 'package:sana_app/DomesticShipping/Domestic_Shipping.dart';
import 'package:sana_app/Login/login_screen.dart';
import 'package:sana_app/RateOrder/RateOrder.dart';
import 'package:sana_app/SubmitOrder/submit_order.dart';
import 'package:sana_app/components/social_icon.dart';

class Body extends StatelessWidget {
  String   apptitle=" شحن السيارات " ,
      apptitlesubtitle1=" اشحن سيارتك من مدينه الى مدينه او من خلال فروعنا الدوليه " ;
 String head=  " اختر من خدماتنا " ,
listTiletitle1=" شحن السيارات " ,
    listTilesubtitle1=" اشحن سيارتك من مدينه الى مدينه او من خلال فروعنا الدوليه ",
  city_name ,formcity ,formOrTo=""
;
 // to -from

  int type,city_id;
  Body({this.type,this.city_id,this.city_name,this.formcity,this.formOrTo});
var Country=[

  " الشفا- شارع دمنهور ",
  " القصيم بريده ",
  " حائل ",
  " الرياض الصناعيه ",
  " الخرج ",
  " الرياض الجنادرية ",
  " الرياض القادسيه   ",
  " الرياض القادسيه -الحرس الملكي ",
  " الرياض القادسيه  ",
  " الرياض الجنادرية ",
];
  List<Widget>  createlist(BuildContext context){
    List<Widget> list=[    Row(
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.green),
          onPressed: () => Navigator.of(context).pop(),
        ),
        Image.asset(
          "assets/icons/icon_inter_city.png",
          width: 50,
        ),
        SizedBox(width: 20,height: 20,),
        RichText(
          text: TextSpan(
              text: apptitle,
              style: TextStyle(fontSize: 20,color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: '\n'+apptitlesubtitle1,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54
                  ),
                ),
              ]
          ),
        ),],
    ),
      Divider(),
      ListTile(
        title: Text(city_name),
      ),
      Divider(),
      ListTile(
        onLongPress: (){},
        onTap: (){
          if(this.type==1){
            Navigator.push( context,  MaterialPageRoute(   builder: (context) { return DeliverCity(type:2,formOrTo:" (الى) ",formcountry:  " الرياض- طريق خريص ",formcountryid: 1,);}, ),  );
          }else if(this.type==2){
//        Navigator.push( context,  MaterialPageRoute(   builder: (context) { return CreateOrder();}, ),  );
            Navigator.push( context,  MaterialPageRoute(   builder: (context) { return RateOrder();}, ),  );
          }
        },
        title: Text( " الرياض- طريق خريص "),

      ) ,];

    Country.forEach((element) {
      list.add(ListTile(title:Text(element) ,));
    });

    return list;
  }
  @override
  Widget build(BuildContext context) {

   return ListView(children: createlist(context),) ;
  }

}