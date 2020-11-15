import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sana_app/SubmitOrder/submit_order.dart';
import 'package:sana_app/components/rounded_button.dart';



class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
return SingleChildScrollView(

    child: Column(

    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      DropdownButtonFormField(
        hint: Text(""),
        items: [],
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))
            )
        ),

      ),

      SizedBox(height: 10,),
      TextFormField(
        onChanged: (val){},
        decoration: InputDecoration(
            labelText: "",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))
            )
        ),

      ),
      SizedBox(height: 10,),
      TextFormField(
        onChanged: (val){},
        decoration: InputDecoration(
            labelText: "",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))
            )
        ),
        keyboardType: TextInputType.number,
      ),
      SizedBox(height: 10,),
      DropdownButtonFormField(
        hint: Text(""),
        items: [],
        decoration: InputDecoration(

            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))
            )
        ),
      ),
      SizedBox(height: 10,),
      Text(""),
      Row(
children: [
    Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    width: size.width * 0.25,
  child:  DropdownButtonFormField(

    hint: Text(""),
    items: [],

  ),),
  Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    width: size.width * 0.25,
    child:  DropdownButtonFormField(

      hint: Text(""),
      items: [],

    ),),
  Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    width: size.width * 0.25,
    child:  DropdownButtonFormField(

      hint: Text(""),
      items: [],

    ),),
  Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    width: size.width * 0.25,
    child:  DropdownButtonFormField(

      hint: Text(""),
      items: [],

    ),)
],
      ),
      SizedBox(height: 10,),
      TextFormField(
        onChanged: (val){},
        decoration: InputDecoration(
            labelText: "",

            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))
            )
        ),

      ),

    RoundedButton(
      color: Colors.green,
    textColor: Colors.white,
    text: "LOGIN",
    press: ()  {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return SubmitOrder();
          },
        ),
      );
    },
    ),



    ],
    )
);


  }

}