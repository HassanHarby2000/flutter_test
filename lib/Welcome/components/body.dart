import 'package:flutter/material.dart';
import 'package:sana_app/Login/login_screen.dart';
import 'package:sana_app/Signup/signup_screen.dart';
import 'package:sana_app/components/rounded_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants.dart';
import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO EDU",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            SizedBox(height: size.height * 0.45),
//            SvgPicture.asset(
//              "assets/icons/chat.svg",
//              height: size.height * 0.45,
//            ),
            SizedBox(height: size.height * 0.05),
        Row(
          children: [
            RoundedButton(
              text: "en",
              width: 0.5,
              press: () async {
                final prefs = await SharedPreferences.getInstance();
                prefs.setString('lang', "en");
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

            RoundedButton(
              text: "ar",
              color: kPrimaryLightColor,
              width: 0.5,
              textColor: Colors.black,
              press:  () async {
                final prefs = await SharedPreferences.getInstance();
                prefs.setString('lang', "ar");
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

          ],  ),
            ]
        ),
      ),
    );
  }
}
