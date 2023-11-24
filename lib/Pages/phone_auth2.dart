import 'package:flutter/material.dart';
import 'package:project_management_/screens/Step3.dart';

class phoneAuth2 extends StatefulWidget {
  const phoneAuth2({super.key});

  @override
  State<phoneAuth2> createState() => _phoneAuth2State();
}

class _phoneAuth2State extends State<phoneAuth2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Color(0xFF001C30),


        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Row(

                    children: [

                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);

                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Color(0xff176B87),
                            size: 40,
                          )
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Container(
                        height: 90,
                        width: 240,
                        child: Image.asset('assets/step0.png'),
                      )
                    ],
                  ),

                  SizedBox(height: 100),

                  Row(
                    children: [
                      SizedBox(width: 20),
                      Text("Step 1",style:TextStyle(
                          color: Color(0xffDAFFFB),
                          fontWeight: FontWeight.bold,
                          fontSize: 50)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text('Provide OTP for authentication',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff176B87),
                      ),),
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // SizedBox(height: 120),

                              Expanded(
                                child: Container(
                                    margin: const EdgeInsets.only(left: 15.0, right: 15.0,top: 26),
                                    child: Divider(
                                      color:  Color(0xff176B80),
                                      height: 30.0,
                                      thickness: 2.0,
                                    )
                                ),
                              ),
                            ]
                        ),
                      ]
                  ) ,
                  SizedBox(height: 30),
                  Column(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(top:20,left:15,right: 15),
                        child:TextFormField(
                          decoration: InputDecoration(
                              fillColor: Color(0x4DDAFFFB),
                              filled: true,
                              hintText: 'Enter OTP',
                              hintStyle: TextStyle(color: Color(0xffDAFFFB)
                              ),
                              border:OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(35)
                              )
                          ),
                          obscureText: false,
                        ),
                      ),
                    ],
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top:20,left:15,right: 15),
                    child: Container(
                        height:58,
                        width:360,
                        decoration: BoxDecoration(
                          color: Color(0xffDAFFFB),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Color(0xffDAFFFB),
                            shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(30)),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Step3()));

                          },

                          child: Text('Next',style:TextStyle(
                            color:Color(0xff176B87),
                            fontSize: 30,
                            fontWeight:FontWeight.bold,
                          )
                          ),
                        )
                    ),
                  ),

                  Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          SizedBox(height: 180,),

                          Center(
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Need help?',
                                    style: TextStyle(
                                      color: Color(0xFF176B87),
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' Contact us',
                                    style: TextStyle(
                                      color: Color(0xFFDAFFFB),
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          const SizedBox(
                            height: 5,
                          ),
                          Center(
                            child: Text(
                              'Project Management App',
                              style: TextStyle(
                                color: Color(0xFF176B87),
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ),


                        ]
                    ),
                  ) ,
                ]
            )
        )
    );
  }
}
