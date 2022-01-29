import 'package:flutter/material.dart';
import 'package:flutter_login_signup_firebase/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "lato"),
      home: LogInScreen(),
    );
  }
}


