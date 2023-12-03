import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:flutter/material.dart';
import 'package:project_management_/Pages/SignUp.dart';
import 'package:project_management_/Pages/error.dart';
import 'package:project_management_/modals/login_controller.dart';



class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {

  loginController controller = Get.put(loginController());
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();



  @override
    void initState(){
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor:Color(0xFF001C30),


        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(


                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SizedBox(height: 90),
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
                          controller: controller.emailController.value,
                                 decoration: InputDecoration(
                              fillColor: Color(0x4DDAFFFB),
                              filled:true,
                              hintText: 'Email',
                              hintStyle: TextStyle(color: Color(0xffDAFFFB)),
                              border:OutlineInputBorder(

                                  borderRadius: BorderRadius.circular(35)
                              )
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your email';
                            } else if (!GetUtils.isEmail(value!)) {
                              return 'Please enter a valid email';
                            }
                            return null;
                          },
                        ),
                      ),

                      Padding(

                        padding: const EdgeInsets.only(top:20,left:15,right: 15),
                        child:
                        TextFormField(
                          controller: controller.passwordController.value,
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
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your password';
                            } else if (value.length < 6) {
                              return 'Password must be at least 6 characters';
                            }
                            return null;
                          },

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
                          if (_formKey.currentState!.validate()) {
                             controller.loginApi(
                               email: controller.emailController.value,
                               password: controller.passwordController.value,
                             );
                          }
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
                               SizedBox(height: 200),

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
          ),
        )
    );
  }
}
