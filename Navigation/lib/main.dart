import 'package:flutter/material.dart';
import 'package:task_one/change_password.dart';
import 'package:task_one/complete.dart';
import 'package:task_one/continue.dart';
import 'package:task_one/forget_password.dart';
import 'package:task_one/home_screen.dart';
import 'package:task_one/login.dart';
import 'package:task_one/signup.dart';

void main() {
  runApp(AuthPages());
}

class AuthPages extends StatelessWidget {
  const AuthPages({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Login.id,
      routes: {
        Login.id: (context) => Login(),
        Signup.id: (context) => Signup(),
        ForgetPassword.id: (context) => ForgetPassword(),
        HomeScreen.id: (context) => HomeScreen(),
        OTP.id: (context) => OTP(),
        ChangePassword.id: (context) => ChangePassword(),
        Complete.id: (context) => Complete(),
      },
    );
  }
}
