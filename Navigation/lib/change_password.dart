import 'package:flutter/material.dart';
import 'package:task_one/complete.dart';
import 'package:task_one/components/buttons.dart';
import 'package:task_one/components/textform.dart';
import 'package:task_one/continue.dart';
import 'package:task_one/login.dart';

class ChangePassword extends StatefulWidget {
  static const String id = 'change_password';
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(child: Icon(Icons.lock, size: 100, color: Colors.white)),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 27.0, right: 12),
                child: Text(
                  'Change and Confirm Your Password',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 17),
              Container(
                height: 360,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 5.0,
                      blurRadius: 2.0,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 24,
                      ),
                      child: Textform(
                        obscure: true,
                        hintText: 'Your New Password',
                        prefixicons: Icon(Icons.lock),
                        suffixicon: Icon(Icons.visibility_off_outlined),
                        labelText: 'New Password',
                        keyboard: TextInputType.text,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 15,
                      ),
                      child: Textform(
                        obscure: true,
                        hintText: 'Confirm Password',
                        prefixicons: Icon(Icons.lock),
                        suffixicon: Icon(Icons.visibility_off_outlined),
                        labelText: 'Confirm Password',
                        keyboard: TextInputType.text,
                      ),
                    ),
                    SizedBox(height: 10),
                    Buttons(
                      title: 'Next',
                      routeName: Complete.id,
                      color: Colors.blueAccent,
                    ),
                    SizedBox(height: 5),
                    Buttons(
                      title: 'Back',
                      routeName: OTP.id,
                      color: Colors.blueAccent,
                    ),
                    SizedBox(height: 5),
                    Buttons(
                      title: 'Back to Login',
                      routeName: Login.id,
                      color: Colors.blueAccent,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
