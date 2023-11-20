import 'dart:ui';
import 'package:project_management_/Step2.dart';
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

      body: SingleChildScrollView(
    child: Column(
    children: [
      SizedBox(height: 30),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>LoadingPage() )

              );
            }, child: Icon(Icons.arrow_back,color: Color(0xff176B87),size: 40,),
          ),

        // Image.asset("assets/step 2 (1).png"),
         ],

      ),
      Padding(padding:EdgeInsets.only(top: 30,left: 20,right: 20)),
      Row(
        // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(width: 12,),
        Text('Step 2',style: GoogleFonts.poppins(color: Color(0xffDAFFFB),fontSize: 40),),
]
      ),Column(
        children: [
          SizedBox(height: 30,),
          Text("Set up your account to create the",style: GoogleFonts.poppins(color:Color(0xff176B87),fontSize: 20),),
     SizedBox(height: 2,),
          Text("best user expereince",style: GoogleFonts.poppins(color:Color(0xff176B87),fontSize: 20),),
        ],

      ),
      SizedBox(height: 8,),
      Container(
        margin: const EdgeInsets.only(left: 10.0, right: 20.0,),
        child: Divider(
          color:  Color(0xff176B87),
          height: 30.0,
          thickness: 1.5,

          // indent: 20.0,
          // endIndent: 20.0,
        )


      ),
      SizedBox(height: 22,),
      Row(
        children: [
          // SizedBox(width: 5,),
          Padding(padding: EdgeInsets.all(20.0)),
          Text("I am here for",style: GoogleFonts.poppins(color:Color(0xff176B87),fontSize: 20),),
          TextFormField(
            decoration: InputDecoration(
              fillColor: Color(0xff176B87),
            ), onTap:  () {
            // showModalBottomSheet(
            //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)
            //     ),backgroundColor: Color(0xFF001C30),
            //
            //     context: context, builder: (BuildContext){
            //   return Column(
            //
            //       );

            Navigator.push(context, MaterialPageRoute(
                builder: (context) =>Step2() ));




          }

          )


        ],
            )]),


      )
      );

  } }