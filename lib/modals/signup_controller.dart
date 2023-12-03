import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../screens/bottom_nav_bar.dart';

class SignupController extends GetxController{

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;



  Future<void> signupApi() async {

    try {
      final response = await http.post(
        Uri.parse('https://reqres.in/api/register'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'email': emailController.value.text,
          'password': passwordController.value.text,
        }),
      );

      print('statusCode: ${response.statusCode}');
      print('Response body: ${response.body}');
      var data = jsonDecode(response.body);
      print(data);


      if (response.statusCode == 200) {
        print('Account created successfully');
        Get.snackbar(
          'Signed In Successfully',
          'ENJOYY FOLKS !',
          icon: const Icon(Icons.check_circle_outline),
          animationDuration: Duration(seconds: 1),
          colorText: Colors.black,
        );

        Get.to(() => bottomNavBar());
      }
      else {
        print('Failed to create account.  Error: ${response.body}');
        Get.snackbar(
          'SignUp failed',
          data['error'],
          icon: const Icon(Icons.error),
          animationDuration: Duration(seconds: 1),
          colorText: Colors.black,
        );
      }
    } catch(e){
      print(e.toString());
      Get.snackbar('exception',e.toString());
    }



  }

}