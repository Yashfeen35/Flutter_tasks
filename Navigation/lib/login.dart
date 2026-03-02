import 'package:flutter/material.dart';
import 'package:task_one/components/buttons.dart';
import 'package:task_one/components/textform.dart';
import 'package:task_one/forget_password.dart';
import 'package:task_one/home_screen.dart';
import 'package:task_one/signup.dart';

class Login extends StatefulWidget {
  static const String id = 'login';
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 40,
                        ),
                        child: Textform(
                          keyboard: TextInputType.text,
                          hintText: 'Your email address',
                          labelText: 'Email Address',
                          prefixicons: Icon(Icons.email_outlined),
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
                        padding: const EdgeInsets.only(left: 150.0),
                        child: Buttons(
                          title: 'forget password?',
                          routeName: ForgetPassword.id,
                        ),
                      ),
                      SizedBox(height: 10),
                      Buttons(
                        title: 'Login',
                        routeName: HomeScreen.id,
                        color: Colors.blueAccent,
                      ),
                      SizedBox(height: 10),
                      Buttons(
                        title: 'Dont have an account?Sign Up ',
                        routeName: Signup.id,
                      ),
                      SizedBox(height: 10),
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
