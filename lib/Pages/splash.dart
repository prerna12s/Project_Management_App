
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_management_/Pages/SignUp.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';
import 'package:flutter_animate/flutter_animate.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {

  changeScreen(){
    Future.delayed(Duration(seconds: 4),(){
      Get.to(() => SignUp());

    });
  }

  @override

  void initState() {
    changeScreen();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF001C30),
      
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            Stack(
              children: [

              Center(
                child: Container(
                

                    height: 220,
                    width: 220,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                           image: AssetImage("assets/logo1.png"),
                        ),
                  ),
                  child: Center(
                    child: Text('Logo',
                      style: TextStyle(
                        fontSize: 29
                      ),
                    ),
                  ),
                ),
              ),
                Center(
                  child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("   "),
                        ),
                      )
                  ),
                )
             ]
            ),
            SizedBox(height: 35),

            Animate(
              effects: [SlideEffect(duration: 1200.ms,delay: 120.ms) ],
              child: Text('Project Management App',
                  style: TextStyle(
                    color: Colors.white24,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
              ),
            ),
            SizedBox(height: 320),
            Row( mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 30),
                Text('Loading...',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                ),),
              ],
            ),
            SizedBox(height: 5,),
            SimpleAnimationProgressBar(
                ratio: 1,
                width: 340,
                height: 10,
                direction: Axis.horizontal,
                backgroundColor: Colors.grey.shade800,
                foregrondColor: Colors.blueAccent,
                duration: Duration( seconds: 3),
                curve: Curves.easeInOut,
                borderRadius: BorderRadius.circular(10),
           ),
          ],
        ),
      ),
    );
  }
}
