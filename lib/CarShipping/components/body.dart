import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sana_app/CreateOrder/creat_order.dart';
import 'package:sana_app/DeliverCity/DeliverCity.dart';


class Body extends StatelessWidget {
  String   apptitle=" شحن السيارات " ,
      apptitlesubtitle1=" اشحن سيارتك من مدينه الى مدينه او من خلال فروعنا الدوليه " ;
 String head=  " اختر من خدماتنا " ,
listTiletitle1=" شحن داخلي " ,
    listTilesubtitle1=" شحن سيارات في المدينه الى مدينه من خلال فروعنا " ,
     listTiletitle2=" شحن دولي " ,
     listTilesubtitle2=" شحن سياراتك من السعوديه الى دوله اخرى من خلال فروعنا",
     listTiletitle3=" سطحه  خاص " ,
     listTiletitle4=" شاحنه كامله " ,
     listTilesubtitle4=" قريبا "

;
  @override
  Widget build(BuildContext context) {

   return SingleChildScrollView(
       child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
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
           onTap: (){
             Navigator.push(
               context,
               MaterialPageRoute(
                 builder: (context) {
                   return DeliverCity(type: 1,);
                 },
               ),
             );
           },

           leading:  Image.asset(
             "assets/icons/icon_car_shipping.png",

           ),
           title: Text(listTiletitle1),
           subtitle: Text(listTilesubtitle1),
         ),
         ListTile(
   onTap:   (){
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) {
    return CreateOrder();
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
           subtitle: Text(listTilesubtitle1),
         ),
         ListTile(
           onLongPress: (){},
           leading:  Image.asset(
             "assets/icons/icon_other_services.png",

           ) ,
           title: Text(listTiletitle4),
           subtitle: Text(listTilesubtitle4),
         ),


       ])
   );
  }

}