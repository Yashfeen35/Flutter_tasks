import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_one/change_password.dart';
import 'package:task_one/components/buttons.dart';
import 'package:task_one/forget_password.dart';

class OTP extends StatefulWidget {
  static const String id = 'continue';
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 150),
            Center(child: Icon(Icons.lock, size: 100, color: Colors.white)),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 27.0, right: 12),
              child: Text(
                'Enter Your OTP via Email/SMS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: PinCodeTextField(
                appContext: context,
                length: 06,
                pastedTextStyle: TextStyle(color: Colors.white),
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                  activeColor: Colors.white,
                  selectedColor: Colors.white,
                  inactiveColor: Colors.white,
                  shape: PinCodeFieldShape.circle,
                ),
                onChanged: (value) {},
              ),
            ),
            SizedBox(height: 30),
            Buttons(
              title: 'Next',
              routeName: ChangePassword.id,
              color: Colors.white,
            ),
            SizedBox(height: 12),
            Buttons(
              title: 'Back',
              routeName: ForgetPassword.id,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
