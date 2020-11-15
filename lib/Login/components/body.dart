import 'package:flutter/material.dart';

import 'package:sana_app/Signup/signup_screen.dart';
import 'package:sana_app/components/already_have_an_account_acheck.dart';
import 'package:sana_app/components/rounded_button.dart';
import 'package:sana_app/components/rounded_input_field.dart';
import 'package:sana_app/components/rounded_password_field.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'background.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            // SvgPicture.asset(
            //   "assets/icons/login.svg",
            //   height: size.height * 0.35,
            // ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () async {
                final prefs = await SharedPreferences.getInstance();
//                prefs.setString('token', accesstoken);
//                prefs.setString('name', _userid);
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(

              press: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
