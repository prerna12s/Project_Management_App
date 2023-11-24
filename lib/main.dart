import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_management_/Pages/phone_auth1.dart';
import 'package:project_management_/Pages/phone_auth2.dart';
import 'package:project_management_/Pages/splash.dart';
import 'package:project_management_/firebase_options.dart';
import 'package:get/get.dart';
import 'package:project_management_/screens/Step3.dart';



Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
      );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Home',
      theme: ThemeData(unselectedWidgetColor: Color(0xFF176B87)),
      debugShowCheckedModeBanner: false,
      home :splashScreen(),

    );
  }}