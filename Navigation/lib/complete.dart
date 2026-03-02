import 'package:flutter/material.dart';
import 'package:task_one/components/buttons.dart';
import 'package:task_one/login.dart';

class Complete extends StatefulWidget {
  static const String id = 'complete';
  const Complete({super.key});

  @override
  State<Complete> createState() => _CompleteState();
}

class _CompleteState extends State<Complete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 230.0),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.lightGreen,
                child: Icon(Icons.gpp_good, size: 30),
              ),
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Your password has changed successfully',
            style: TextStyle(color: Colors.white, fontSize: 20),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
          Buttons(
            title: 'Back to Login',
            routeName: Login.id,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
