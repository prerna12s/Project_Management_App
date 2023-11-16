import 'package:flutter/material.dart';
import 'package:project_management_/Pages/Signup.dart';
import 'package:google_fonts/google_fonts.dart';
class  Step1 extends StatefulWidget {
  const Step1
      ({Key? key}) : super(key: key);

  Step1State createState() => Step1State(); }

class Step1State extends State<Step1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF001C30),
      appBar: AppBar(
        backgroundColor: Color(0xFF001C30),
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Color(0xff176B87,),size: 40,),onPressed:() {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => LoadingPage() ) );
        },),
      ),
      body: Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    child: const Column(
    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(padding: EdgeInsets.only(top: 28,)),
    Text("Step 2",style:TextStyle(
    color: Color(0xffDAFFFB),fontSize: 50,),
    ),
   Column(
      children: [
Padding(padding: EdgeInsets.only(top: 20)),
        Text("Set up your account to create ",

             style: TextStyle(color: Color(0xff176B87),fontSize: 25, ),)
        ],
    )]
    ),
    )); } }
