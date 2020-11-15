import 'package:flutter/material.dart';
import 'package:sana_app/Login/login_screen.dart';
import 'package:sana_app/Signup/components/social_icon.dart';
import 'package:sana_app/components/already_have_an_account_acheck.dart';
import 'package:sana_app/components/rounded_button.dart';
import 'package:sana_app/components/rounded_input_field.dart';
import 'package:sana_app/components/rounded_password_field.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'background.dart';
import 'or_divider.dart';

class Body extends StatefulWidget {


  @override
  stateBody createState() => stateBody();
}
class stateBody extends State<Body> {
  String lang="s";

void start() async{
   final prefs = await SharedPreferences.getInstance();
   setState(() {
     this.lang= prefs.getString("lang");
   });

 }
  @override
  Widget build(BuildContext context)  {
    Size size = MediaQuery.of(context).size;
    start();
     
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP" + this.lang ,
              style: TextStyle(fontWeight: FontWeight.bold),

            ),
            SizedBox(height: size.height * 0.03),
//            SvgPicture.asset(
//              "assets/icons/signup.svg",
//              height: size.height * 0.35,
//            ),
            RoundedInputField(

              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                     return LoginScreen();
                    },
                  ),
                );
              },
            ),
//            OrDivider(),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
