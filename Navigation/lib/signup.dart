import 'package:flutter/material.dart';
import 'package:task_one/components/buttons.dart';
import 'package:task_one/components/textform.dart';
import 'package:task_one/login.dart';

class Signup extends StatefulWidget {
  static const String id = 'signup';
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.rotate(
                angle: 10 * 3.14 / 5.5,
                child: Text(
                  'E',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'ECORP',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  letterSpacing: 8,
                ),
              ),
              SizedBox(height: 20),

              Center(
                child: Container(
                  height: 450,
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
                          top: 20,
                        ),
                        child: Textform(
                          keyboard: TextInputType.text,
                          hintText: 'Username',
                          labelText: 'Name',
                          prefixicons: Icon(Icons.person),
                        ),
                      ),
                      SizedBox(height: 2),
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
                      SizedBox(height: 2),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 15,
                        ),
                        child: Textform(
                          keyboard: TextInputType.number,
                          hintText: 'Password',
                          labelText: 'Password',
                          obscure: true,
                          prefixicons: Icon(Icons.lock),
                          suffixicon: Icon(Icons.visibility_off_outlined),
                        ),
                      ),
                      SizedBox(height: 2),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 15,
                        ),
                        child: Textform(
                          keyboard: TextInputType.number,
                          hintText: 'Confirm Password',
                          labelText: 'Confirm Password',
                          obscure: true,
                          prefixicons: Icon(Icons.lock),
                          suffixicon: Icon(Icons.visibility_off_outlined),
                        ),
                      ),
                      SizedBox(height: 20),
                      Buttons(
                        title: 'Sign Up ',
                        routeName: Login.id,
                        color: Colors.blueAccent,
                      ),
                      SizedBox(height: 10),
                      Buttons(
                        title: 'Already have an account?Log in',
                        routeName: Login.id,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
