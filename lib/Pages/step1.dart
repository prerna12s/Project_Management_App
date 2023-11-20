import 'package:flutter/material.dart';
class step1 extends StatefulWidget {
  const step1({super.key});

  @override
  State<step1> createState() => _step1State();
}

class _step1State extends State<step1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          SizedBox(height: 200),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Step 1",
                style: TextStyle(
                    fontSize: 27
                ),),
            ],
          ),
        ],
      ),
    );
  }
}