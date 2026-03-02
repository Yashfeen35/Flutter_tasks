import 'package:flutter/material.dart';

class Textform extends StatelessWidget {
  final hintText;
  final labelText;
  final prefixicons;
  final keyboard;
  final suffixicon;
  final obscure;
  const Textform({
    super.key,
    required this.hintText,
    required this.prefixicons,
    required this.labelText,
    required this.keyboard,
    this.suffixicon,
    this.obscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboard,
      cursorColor: Colors.black,
      obscureText: obscure,
      decoration: InputDecoration(
        prefixIcon: prefixicons,
        suffixIcon: suffixicon,
        filled: true,
        fillColor: Colors.grey.withOpacity(0.2),
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.black),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black12, width: 1.0),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black12, width: 1.0),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
