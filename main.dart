import 'package:flutter/material.dart';
import 'package:nanyuanbeizhi/src/pages/login/forget_passwords.dart';
import 'package:nanyuanbeizhi/src/pages/login/login_page.dart';
import 'package:nanyuanbeizhi/src/pages/login/user_and_privacy.dart';
import 'adsfkh.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyLoginPage(),
    );
  }
}






