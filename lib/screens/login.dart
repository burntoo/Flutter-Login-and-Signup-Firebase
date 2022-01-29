import 'package:flutter/material.dart';
import 'package:flutter_login_signup_firebase/screens/signup.dart';
import 'package:flutter_login_signup_firebase/theme.dart';
import 'package:flutter_login_signup_firebase/widgets/login_form.dart';
import 'package:flutter_login_signup_firebase/widgets/login_options.dart';
import 'package:flutter_login_signup_firebase/widgets/primary_button.dart';

class LogInScreen extends StatelessWidget {
  //const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: defaultPadding,
        child : SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 120,),
                Text("Welcome Back", style: titleText,),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Text("New to this app", style: subTitle,),
                    SizedBox(width: 5,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),),);
                      },
                      child: Text("Sign Up", style: textButton.copyWith(decoration: TextDecoration.underline, decorationThickness: 1),),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                LogInForm(),
                SizedBox(height: 20,),
                Text("Forgot Password?", style: TextStyle(color: zambeziColor, fontSize: 14, decoration: TextDecoration.underline, decorationThickness: 1),),
                SizedBox(height: 20,),
                PrimaryButton(buttonText: "Login",),
                SizedBox(height: 20,),
                Text("or login with:", style: subTitle.copyWith(color: blackColor),),
                SizedBox(height: 20,),
                LoginOption(),
              ]
          ),
        )
      ),
    );
  }
}
