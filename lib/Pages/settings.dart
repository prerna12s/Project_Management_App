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

      // bottomNavigationBar: BottomNavigationBar(
      //
      //   items: [
      //
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.home,color: Colors.black,)
      //     ),
      //   ],
      //
      // ),

      body:
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.png"),
            fit: BoxFit.cover,
          ),
        ),


        child: Column(

          children: [
            // SizedBox(width: 100,),
            Padding(padding:EdgeInsets.only(top: 70,left: 20,right: 20)),

            Row(
              children: [
                SizedBox(width: 22,),
                Text("Settings",style: GoogleFonts.poppins(color: Color(0xffDAFFFB),fontSize: 43,fontWeight: FontWeight.w500),)
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                SizedBox(width: 5,),
                Container(
                  height: 60,
                  width:250,
                  decoration: new BoxDecoration(
                    color: Color(0xFF001C30),
// borderRadius: BorderRadius.circular(15),

                    borderRadius: const BorderRadius.horizontal(
                        left: Radius.circular(15), right: Radius.circular(0)),
                    border: Border.all(width: 2.0, color: Color(0xff176B87)),
                  ),

                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 5)),
                      CircleAvatar(

                        backgroundColor: Color(0xff176B87),
                        child:   Icon(Icons.woman,color: Colors.black,size: 40,),
                      ),
                      SizedBox(width: 7,),
                      Text("My Team",style: GoogleFonts.poppins(color: Color(0xffDAFFFB),fontWeight: FontWeight.w400,fontSize: 30),

                      ),
                      // SizedBox(width: 50,),
                      // Container(
                      //   decoration: BoxDecoration(
                      //     color: Color(0xffDAFFFB),
                      //     borderRadius: BorderRadius.circular(15),
                      //     border: Border.all(width: 2.0, color: Color(0xff176B87)),
                      //   ),
                      // ),
                      // TextFormField(
                      // decoration: InputDecoration(
                      //     fillColor: Color(0x4DDAFFFB ),
                      //     filled: true,
                      //
                      //     hintText: 'Password',
                      //     hintStyle: TextStyle(color: Color(0xffDAFFFB)),
                      //
                      //     border:OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(35)
                      //     )
                      // ),),
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

      ) ,

    );
  }
}