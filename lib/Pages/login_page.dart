import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:project_management_/Pages/SignUp.dart';
import 'package:project_management_/Pages/error.dart';
import 'package:project_management_/Pages/phone_auth1.dart';
import 'package:project_management_/screens/bottom_nav_bar.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();



  Future<void> login(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse('https://reqres.in/api/register'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'email': email,
          'password': password,
        }),
      );

      print('Response status code: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 200) {
        print('Account created successfully');
        Navigator.push(context, MaterialPageRoute(builder: (context) => bottomNavBar()));
      } else {
        print('Failed to create account. Error: ${response.body}');
      }
    } catch (e) {
      print(e.toString());
    }
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor:Color(0xFF001C30),


        body: SingleChildScrollView(
          child: Column(


              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                SizedBox(height: 50),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Text("Log In",style:TextStyle(
                        color: Color(0xffDAFFFB),fontWeight: FontWeight.bold,fontSize: 50)),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top:20,right:15,left:15),
                      child: TextFormField(
                        controller: emailController,
                               decoration: InputDecoration(
                            fillColor: Color(0x4DDAFFFB),
                            filled:true,
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Color(0xffDAFFFB)),
                            border:OutlineInputBorder(

                                borderRadius: BorderRadius.circular(35)
                            )
                        ),
                      ),
                    ),

                    Padding(

                      padding: const EdgeInsets.only(top:20,left:15,right: 15),
                      child:
                      TextFormField(
                        controller: passwordController,
                                             decoration: InputDecoration(
                            fillColor: Color(0x4DDAFFFB),
                            filled: true,
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Color(0xffDAFFFB)
                            ),
                            border:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(35)
                            )
                        ),
                        obscureText: true,
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
                        ),onPressed: () {
                              login(emailController.text.toString(), passwordController.text.toString());
                      },

                        child: Text('Log In',style:TextStyle(
                          color:Color(0xff176B87),
                          fontSize: 24,
                          fontWeight:FontWeight.bold,
                        )
                        ),
                      )
                  ),
                ),

                Container(
                    child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 38)),
                            InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                                },
                                child:Text("New User? Sign Up",
                                  style: TextStyle(
                                      color:Color(0xffDAFFFB),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold

                                  ),
                                )
                            ),
                             SizedBox(height: 250),

                             Padding(
                               padding: const EdgeInsets.only(bottom: 10.0),
                               child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(padding: EdgeInsets.only(top: 38)),
                                          InkWell(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=> errorPage()));
                                              },
                                              child:Text("Need help? Contact us",
                                                style: TextStyle(
                                                    color:Color(0xffDAFFFB),
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold

                                                ),
                                              )
                                          )
                                        ],
                                      ),
                             ),

                            SizedBox(height: 10),
                            Center(
                              child: Text('Project Management App',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff176B87)
                                ),),
                            )
                          ],
                        )
                    )
                ),


              ]),
        )
    );
  }
}
