import 'package:flutter/material.dart';
import 'package:task_one/components/buttons.dart';
import 'package:task_one/components/textform.dart';
import 'package:task_one/continue.dart';
import 'package:task_one/login.dart';

class ForgetPassword extends StatefulWidget {
  static const String id = 'forget_password';
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 75.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Icon(Icons.lock, size: 100, color: Colors.white)),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 27.0, right: 12),
                child: Text(
                  'Forget Password  and Continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: 400,
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
                    SizedBox(height: 7),
                    Padding(
                      padding: const EdgeInsets.only(right: 100.0),
                      child: Text(
                        'Make a selection',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    SizedBox(height: 4),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 15,
                      ),
                      child: Textform(
                        keyboard: TextInputType.emailAddress,
                        hintText: 'Your Email Address',
                        labelText: 'Email Address',
                        prefixicons: Icon(Icons.email),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: Colors.black,
                            indent: 30,
                            endIndent: 10,
                          ),
                        ),
                        Text(
                          "OR",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: Colors.black,
                            indent: 10,
                            endIndent: 30,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 15,
                      ),
                      child: Textform(
                        keyboard: TextInputType.number,
                        hintText: 'Your Contact #',
                        labelText: 'Contact #',
                        prefixicons: Icon(Icons.phone),
                      ),
                    ),
                    SizedBox(height: 17),
                    Buttons(
                      title: 'NEXT',
                      routeName: OTP.id,
                      color: Colors.blueAccent,
                    ),
                    SizedBox(height: 7),
                    Buttons(
                      title: 'Back to login',
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
