

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class errorPage extends StatefulWidget {
  const errorPage({super.key});

  @override
  State<errorPage> createState() => _errorPageState();
}

class _errorPageState extends State<errorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF001C30),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8),
        child: Column(

          children: [


            SizedBox(height: 90),
            Row(
              children: [
                SizedBox(width: 15),
                Text("Oops",style:TextStyle(
                    color: Color(0xffDAFFFB),
                    fontWeight: FontWeight.bold,
                    fontSize: 50)
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                SizedBox(width: 25),
                Text("Something Went Wrong, Try Again :(",
                    style:TextStyle(
                       color: Color(0xffDAFFFB),
                       fontSize: 20)
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Divider(height: 60, thickness: 1, color: Color(0xffDAFFFB)),
            ),
            SizedBox(height: 40),
            Container(
              width: 250,
              height: 250,
                child: Image(image: AssetImage("assets/error.png"))),
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.only(left:15,right: 15),
              child: Container(
                  height:58,
                  width:360,

                  decoration: BoxDecoration(
                    color: Color(0xffDAFFFB),

                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffDAFFFB),
                      shape:RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(30)
                      ),
                    ),onPressed: () {
                      Navigator.pop(context);
                  },
                    child: Text('Go Back',style:TextStyle(
                                           color:Color(0xff176B87),
                                           fontSize: 24,
                                           fontWeight:FontWeight.bold,
                    )),
                  )
              ),


            ),
                      ],
        ),
      ) ,
    );
  }
}
