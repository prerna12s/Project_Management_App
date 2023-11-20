import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_management_/Pages/Inbox.dart';
import 'package:project_management_/Pages/Step3.dart';
import 'package:project_management_/Pages/add_project.dart';
import 'package:project_management_/firebase_options.dart';
import 'package:project_management_/Pages/LoadingScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const AddProject(),
      },
    );
  }
}
