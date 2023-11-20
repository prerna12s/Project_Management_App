import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            fillColor: const Color(0x4DDAFFFB),
            filled: true,
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Color(0xB2DAFFFB),
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 0,
            )),
      ),
    );
  }
}