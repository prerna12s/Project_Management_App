import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_management_/Pages/home.dart';
import 'package:project_management_/screens/bottom_nav_bar.dart';

class Login_finish extends StatelessWidget {
  const Login_finish({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor:Color(0xFF001C30),

      body:
         Column(
          children: [
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(icon: Icon(Icons.arrow_back),color: Color(0xFF176B87),iconSize: 50,
                    onPressed: (){Navigator.pop(context);}
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(width:18),
                Text("Done", style:GoogleFonts.poppins(
                    color: Color(0xFFDAFFFB),
                    fontSize:40,
                )
                ),
              ],),
            SizedBox(
              height:22,
            ),
            Column(
              children: [
                Text("You've been successfully", style:GoogleFonts.poppins(
              color:Color(0xFF176B87),
              fontSize: 20,
              )
              ),
                SizedBox(height:4),
                Text("logged in", style: TextStyle(
                  color:Color(0xFF176B87),
                  fontSize: 20,
                ), ),

              ],
            ),
            SizedBox(height:20),
            Container(
              color: Color(0xFF176B87),
              height: 2,
              width:MediaQuery.of(context).size.width/1.1,
            ),
            SizedBox(height:80),

               Container(
                height: 200,
                width:  200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                     image: AssetImage('assets/successful.png'),
                    //fit: BoxFit.fill
                  )


                ),

              ),

            Padding(
              padding: const EdgeInsets.only(top:80),
              child: SizedBox(
                height:56,
                width: MediaQuery.of(context).size.width/1.2,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> bottomNavBar()));
                },
                    style:  ElevatedButton.styleFrom(

                      backgroundColor: Color(0xFFDAFFFB),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))

                    ),
                    child:Text("Finish",style:
                    TextStyle(
                      color:Color(0xFF176B87),
                      fontSize: 40,
                    ),)
                ),
              ),
            ),
            SizedBox(
              height: 24
            ),
            Column(
               crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                        Text("Need help?",style:GoogleFonts.poppins(
                       color:Color(0xFF176B87),
                        fontSize: 12,
                 )),
                    Text("Contact us",
                        style:GoogleFonts.poppins(
                          color:Color(0xFFDAFFFB),
                          fontSize: 12,
                        )),
                  ],
                ),
                SizedBox(height:3),

                    Text("Project Management App", style:GoogleFonts.poppins(
                      color:Color(0xFFDAFFFB),
                      fontSize: 12,
                    ))


               

              ],
            )


          ],
        ),

    );
  }
}
