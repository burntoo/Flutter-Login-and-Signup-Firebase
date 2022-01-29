import 'package:flutter/material.dart';
import 'package:flutter_login_signup_firebase/theme.dart';
import 'package:flutter_login_signup_firebase/widgets/check_box.dart';
import 'package:flutter_login_signup_firebase/widgets/login_options.dart';
import 'package:flutter_login_signup_firebase/widgets/primary_button.dart';
import 'package:flutter_login_signup_firebase/widgets/signup_form.dart';

import 'login.dart';

class SignUpScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70,),
            Padding(
              padding: defaultPadding,
              child: Text("Create Account", style: titleText,),
            ),
            SizedBox(height: 5,),
            Padding(padding: defaultPadding,
            child: Row(
              children: [
                Text("Already a member?", style: subTitle,),
                SizedBox(width: 5,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LogInScreen(),),);
                  },
                  child: Text("Login", style: textButton.copyWith(decoration: TextDecoration.underline, decorationThickness: 1),),
                )
              ],
            ),),
            SizedBox(height: 10,),
            Padding(padding: defaultPadding,child: SignUpForm(),),
            SizedBox(height: 20,),
            Padding(
              padding: defaultPadding,
              child: CheckBox("Agree to terms and condition"),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: defaultPadding,
              child: CheckBox("I am atleast 18 years old"),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: defaultPadding,
              child: PrimaryButton(buttonText: "Sign Up"),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: defaultPadding,
              child: Text("Or log in with", style: subTitle.copyWith(color: blackColor)),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: defaultPadding,
              child: LoginOption(),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
