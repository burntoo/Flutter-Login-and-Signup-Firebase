import 'package:flutter/material.dart';
import 'package:flutter_login_signup_firebase/theme.dart';

class SignUpForm extends StatefulWidget {
  //const LogInForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildInputForm("First Name", false),
        buildInputForm("Second Name", false),
        buildInputForm("Email", false),
        buildInputForm("Phone number", false),
        buildInputForm("Password", true),
        buildInputForm("Confirm Password", true),
      ],
    );
  }

  Padding buildInputForm(String hint, bool pass){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
        child: TextFormField(
          obscureText: pass ? _isObscure : false,
          decoration: InputDecoration(hintText: hint, hintStyle: TextStyle(color: textFieldColor), focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: primaryColor)),
              suffixIcon: pass ? IconButton(
                onPressed: () {
                  setState(() {
                    _isObscure =! _isObscure;
                  });
                }, icon: Icon(_isObscure ? Icons.visibility_off : Icons.visibility, color: primaryColor,),) : null),)
    );
  }
}
