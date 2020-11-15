import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sana_app/CreateOrder/creat_order.dart';
import 'package:sana_app/DeliverCountry/DeliverCountry.dart';
import 'package:sana_app/DomesticShipping/Domestic_Shipping.dart';
import 'package:sana_app/Login/login_screen.dart';
import 'package:sana_app/components/social_icon.dart';


class Body extends StatelessWidget {
  String   apptitle=" شحن السيارات " ,
      apptitlesubtitle1=" اشحن سيارتك من مدينه الى مدينه او من خلال فروعنا الدوليه " ;
  String head=  " اختر من خدماتنا " ,
      listTiletitle1=" شحن السيارات " ,
      listTilesubtitle1=" اشحن سيارتك من مدينه الى مدينه او من خلال فروعنا الدوليه " ,
  formcountry ,formOrTo
  ;
  int type,formcountryid;
   Body({this.type,this.formcountry,this.formOrTo,this.formcountryid});
  var Citys=[

  " المنطقه الغربيه ",
    " المنطقه الشرقيه ",
    " منطقه جنوبيه ",
    " المنطقه الشماليه ",

  ];
 List<Widget>  createlist(BuildContext context){
   List<Widget> list=[

     Row(
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
       onTap: (){
         Navigator.push(
           context,
           MaterialPageRoute(
             builder: (context) {
               return DeliverCountry(type: this.type,city_name: " المنطقه الوسطى " ,city_id: 1,formOrTo:" ");
             },
           ),
         );},

       title: Text(  " المنطقه الوسطى " ),

     ),
   ];
   Citys.forEach((element) {
     list.add(ListTile(title:Text(element) ,));
   });

   return list;
 }

  @override
  Widget build(BuildContext context) {

    return   ListView(children: createlist(context),);
//              GridView.count(crossAxisCount: 1,
//                children: List.generate(Citys.length, (index) => Container(
//
//    width: size.width * 0.5,child: ListTile(
//                  onLongPress: (){},
//
//                  title: Text("gg"),
//
//                )) ,
//              )
//                )





  }

}