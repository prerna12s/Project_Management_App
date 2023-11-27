import 'package:flutter/material.dart';

class MyContainerField extends StatelessWidget {
  final controller;
  final String hintText;

  const MyContainerField({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
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