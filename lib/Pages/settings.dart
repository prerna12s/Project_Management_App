import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class  setting extends StatefulWidget {
  const setting
      ({Key? key}) : super(key: key);

  settingState createState() => settingState(); }

class settingState extends State<setting> {
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF001C30),

      body:
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.png"),
            fit: BoxFit.cover,
          ),
        ),


        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(height: 50),
              Text("Settings",style: GoogleFonts.poppins(color: Color(0xffDAFFFB),fontSize: 34,fontWeight: FontWeight.w500),),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    height: 60,
                    width:220,
                    decoration:  BoxDecoration(
                      color: Color(0xFF001C30),
                      borderRadius: const BorderRadius.horizontal(
                          left: Radius.circular(15), right: Radius.circular(0)),
                      border: Border.all(width: 2.0, color: Color(0xff176B87)),
                    ),

                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 5)),
                        CircleAvatar(

                          backgroundColor: Color(0xff176B87),
                          child:   Icon(Icons.man,color: Colors.black,size: 38),
                        ),
                        SizedBox(width: 7),
                        Text("My Team",style: GoogleFonts.poppins(color: Color(0xffDAFFFB),fontWeight: FontWeight.w400,fontSize: 22),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      height: 60,
                      width:120,
                      decoration: BoxDecoration(
                        color: Color(0x4DDAFFFB),

                        border: Border.all(width: 2.0, color: Color(0xff176B87)),
                        borderRadius: const BorderRadius.horizontal(
                            left: Radius.circular(0), right: Radius.circular(15)),
                      ),
                      child:Row(
                        children: [
                          SizedBox(width:10,),
                          Text('8  People',style: GoogleFonts.poppins(color: Color(0xffDAFFFB),fontWeight: FontWeight.w400,fontSize: 22),)
                        ],
                      )
                  ),
                ],
              ),
            ],
          ),
        ),
      ) ,
    );
  }
}