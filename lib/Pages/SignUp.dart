import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:project_management_/Pages/error.dart';
import 'package:project_management_/Pages/login_page.dart';
import 'package:project_management_/Pages/phone_auth1.dart';
import 'package:project_management_/screens/bottom_nav_bar.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login (String email, password) async{
    try{
      Response response =  await post(
        Uri.parse('https://reqres.in/api/register'),
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          body: {

          'email' : email ,
          'password' : password
        }
      );
         if (response.statusCode ==200){
             print('account created successfully');
             Navigator.push(context, MaterialPageRoute(builder: (context)=> bottomNavBar()));
         }
         else {
           print('failed.  Error: ${response.body}');
           print('Response status code: ${response.statusCode}');

         }

          }
        catch(e){
      print(e.toString());
        }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Color(0xFF001C30),


        body: SingleChildScrollView(
          child: Column(


              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                SizedBox(height: 50),
                  Row(
                  children: [
                    SizedBox(width: 20),
                    Text("Sign-Up",style:TextStyle(
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
                         child: TextFormField(
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
                          ),

                          onPressed: () {
                            login(emailController.text, passwordController.text);

                          },

                             child: Text('Sign Up',style:TextStyle(
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
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> loginPage()));
                                },
                                child:Text("Already a user? Login",
                                  style: TextStyle(
                                      color:Color(0xffDAFFFB),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold

                                  ),
                                )
                            )
                          ],
                        )
                    )
                ),


                Container(
                    child: Column(

                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 100),
                           // Padding(padding: EdgeInsets.only(top: 120)),
                            Expanded(
                              child: Container(
                                  margin: const EdgeInsets.only(left: 15.0, right: 10.0,top: 26),
                                  child: Divider(
                                    color:  Color(0xff176B80),
                                    height: 30.0,
                                    thickness: 2.0,
                                    )
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 26),
                              child: Text("OR",
                                style: TextStyle(
                                    color:  Color(0xff176B87),
                                    fontSize:22),
                              ),
                            ),

                            Expanded(
                              child: Container(
                                  margin: const EdgeInsets.only(left: 10.0, right: 15.0,top: 26),
                                  child: Divider(
                                    color: Color(0xff176B87),
                                    height: 30.0,
                                    thickness: 2.0,
                                  )),
                            ),
                          ]
                          ),

                          Row(
                            children: [
                              SizedBox(width: 20),
                              Text("Sign-up",style:TextStyle(
                                color: Color(0xffDAFFFB),fontWeight: FontWeight.bold,fontSize: 50,),),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Row(
                            children: [
                              SizedBox(width: 15),
                              Container(
                                width:360,
                                height:58,
                                child:
                                 GestureDetector(
                                    child: Container(
                                      padding: EdgeInsets.only(top: 10,left: 15,right: 15),
                                      decoration: BoxDecoration(
                                      color : Color(0xffDAFFFB),
                                      borderRadius: BorderRadius.circular(50),
                                      ),
                                       child: Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                           Container(
                                             padding: EdgeInsets.only( bottom: 11),

                                             child: Image.network(
                                            'http://pngimg.com/uploads/google/google_PNG19635.png',
                                          ),
                                        ),

                                           Padding(
                                             padding: const EdgeInsets.only(bottom: 11.0),
                                              child: InkWell(
                                                 onTap: () {
                                                 Navigator.push(context, MaterialPageRoute(
                                                  builder: (context) => phoneAuth()) );
                                            },
                                                  child:   Text('Sign-up with Google',style: TextStyle(
                                                           color: Color(0xff176B87),
                                                           fontSize: 22,
                                                  fontWeight: FontWeight.bold
                                                  )
                                                      ),
                                          ),
                                        ),
                                      ]),
                                ),
                              ),

                              ),
                            ],
                          ),
                          SizedBox(height: 35),
                          Container(
                              child: Center(
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
                                  )
                              )
                          ),
                          SizedBox(height: 15),
                          Center(
                            child: Text('Project Management App',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff176B87)
                            ),),
                          )
                        ]))]),
        ));

  }




}