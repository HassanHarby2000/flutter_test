import 'package:flutter/material.dart';
import 'package:sana_app/CarShipping/car_shipping.dart';
import 'package:sana_app/CreateOrder/creat_order.dart';
import 'package:sana_app/DomesticShipping/Domestic_Shipping.dart';
import 'package:sana_app/Login/login_screen.dart';
import 'package:sana_app/components/social_icon.dart';

class Body extends StatelessWidget {

 String head=  " اختر من خدماتنا " ,
listTiletitle1=" شحن السيارات " ,
    listTilesubtitle1=" اشحن سيارتك من مدينه الى مدينه او من خلال فروعنا الدوليه " ,
     listTiletitle2=" خدمه السطحات  " ,
     listTilesubtitle2=" نوصل سيارتك داخل المدينه او من البيت  الى فروعنا او العكس " ,
     listTiletitle3=" خدمات اخرى " ,
     listTilesubtitle3=" خدمات اخرى ",
     row11=" سيارتي " ,
     row12=" الملف الشخصي " ,
     row13=" رحلاتي " ,
     row21=" تتبع الاتفاقيه " ,
     row22=" فروعنا " ,
     row23=" تواصل معنا "

;
  @override
  Widget build(BuildContext context) {

   return SingleChildScrollView(
       child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         Text(
           head,
           style: TextStyle(fontWeight: FontWeight.bold),
         ),
         ListTile(
           onTap: (){
             Navigator.push(
               context,
               MaterialPageRoute(
                 builder: (context) {
                   return CarShipping();
                 },
               ),
             );
           },
           onLongPress: (){

           },
           leading:  Image.asset(
             "assets/icons/icon_car_shipping.png",

           ),
           title: Text(listTiletitle1),
           subtitle: Text(listTilesubtitle1),
         ),
         ListTile(
           onLongPress: (){      Navigator.push(
             context,
             MaterialPageRoute(
               builder: (context) {
                 return LoginScreen();
               },
             ),
           );},
           leading: Image.asset(
             "assets/icons/icon_towing_services.png",


           ) ,
           title: Text(listTiletitle2),
           subtitle: Text(listTilesubtitle2),
         ),
         ListTile(
           onLongPress: (){},
           leading:  Image.asset(
             "assets/icons/icon_other_services.png",

    ) ,
           title: Text(listTiletitle3),
           subtitle: Text(listTilesubtitle3),
         ),
         Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
                SocalIcon(
                    iconSrc: "assets/icons/icon_my_cars.png",
                     press: () {},
                  text: row11,
                ),
                SocalIcon(
                iconSrc: "assets/icons/icon_profile.png",
                press: () {},
                  text:  row12,
                ),
                SocalIcon(
                iconSrc: "assets/icons/icon_my_order.png",
                press: () {},
                  text: row13,
                ),

   ]),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[



             SocalIcon(
               iconSrc: "assets/icons/icontracking.png",
               press: () {},
               text: row21,
             ),
             SocalIcon(
               iconSrc: "assets/icons/iconbranches.png",
               press: () {},
               text: row22,
             ),
             SocalIcon(
               iconSrc: "assets/icons/iconoffers.png",
               press: () {},
               text: row23,
             )
           ],
         ),


       ])
   );
  }

}