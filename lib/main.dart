import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_management_/Pages/splash.dart';
import 'package:project_management_/firebase_options.dart';
import 'package:get/get.dart';




Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
      );

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

   @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Home',
      theme: ThemeData(unselectedWidgetColor: Color(0xFF176B87)),
      debugShowCheckedModeBanner: false,
      home :splashScreen(),

    );
  }}