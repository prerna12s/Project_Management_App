import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_management_/Pages/auth.dart';
import 'package:project_management_/Pages/step1.dart';

class LoadingPage extends StatefulWidget {

 LoadingPage({super.key});
  final User? user =Auth().currentUser;
  Widget _title(){
    return const Text('Firebase auth');
  }
Widget _User(){
    return Text(user?.email??"User email");
}
  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Color(0xFF001C30),


        body: Container(
      // margin: EdgeInsets.symmetric(horizontal: 50),
      child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

        children: [

        Padding(padding:   EdgeInsets.only(top:120,right: 20,left: 15,),),
          Text("Sign-in",style:TextStyle(
            color: Color(0xffDAFFFB),fontWeight: FontWeight.bold,fontSize: 50,),),
          Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(top:20,right:15,left:15),
                child: TextFormField(

                  decoration: InputDecoration(
                      fillColor: Color(0x4DDAFFFB ),
                      filled:true,
                      hintText: 'Username',
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

                       decoration: InputDecoration(
    fillColor: Color(0x4DDAFFFB ),
    filled: true,

    hintText: 'Password',
    hintStyle: TextStyle(color: Color(0xffDAFFFB)),

    border:OutlineInputBorder(
    borderRadius: BorderRadius.circular(35)
    )
    ),
    ),
                ),

              ],
              ),

          Row( children: [

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
            Navigator.push(context, MaterialPageRoute(
                builder: (context) =>Step1() ) );
          }, child: Text('Log In',style:TextStyle(
            //
                color:Color(0xff176B87),
                fontSize: 24,
                fontWeight:FontWeight.bold,
              )),
          )
          // child:Center(
          //
          //   child: Text("Log In",style:TextStyle(
          //
          //     color:Color(0xff176B87),
          //     fontSize: 24,
          //     fontWeight:FontWeight.bold,
          //   )
          //   ),
          // ),

        ),





    ),

    ],
    ),
          Container(
            child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
              children: [

          Row(children: [
            Padding(padding: EdgeInsets.only(top: 120)),
            Expanded(
              child: new Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                  child: Divider(
                    color:  Color(0xff176B87),
                    height: 30.0,
                            thickness: 4.0,

                            // indent: 20.0,
                            // endIndent: 20.0,
                  )),
            ),
            Text("OR",style: TextStyle(color:  Color(0xff176B87),fontSize:30,fontWeight: FontWeight.bold),),
            Expanded(
              child: new Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                  child: Divider(
                    color: Color(0xff176B87),
                    height: 30.0,
                    thickness: 4.0,
                  )),
            ),
          ]),
                Padding(padding:   EdgeInsets.only(top:15,right:50,left: 50,),),
                Text("Sign-up",style:TextStyle(
                  color: Color(0xffDAFFFB),fontWeight: FontWeight.bold,fontSize: 50,),),
                Padding(padding: EdgeInsets.only(top: 20)),
                Container(
              width:360,
              height:58,     child:

                    GestureDetector(
                 child: Container(
                   padding: EdgeInsets.only(top: 10,left: 15,right: 15),
                   decoration: BoxDecoration(
                     color : Color(0x4DDAFFFB),
                     borderRadius: BorderRadius.circular(50),
                   ),
                   child: Row(
                     // mainAxisAlignment: MainAxisAlignment.start,

                     // mainAxisAlignment: MainAxisAlignment.start,

                     children: [
                       Container(
                         padding: EdgeInsets.only(left: 15,right: 15,top: 0),

                          // decoration: BoxDecoration(color: Color(0xff176B87e),),
                         child: Image.network(
                          'http://pngimg.com/uploads/google/google_PNG19635.png',

                         ),
                       ),
                       SizedBox(
                         width: 5.0,
                       ),
                         InkWell(
                           onTap: () {
                             Navigator.push(context, MaterialPageRoute(
                                 builder: (context) =>Step1() ) );
                           },
                           child:   Text('Sign-up with Google',style: TextStyle(color: Color(0xffDAFFFB),fontSize: 22)),
                         ),



                   ]),
                 ),
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
                           onTap: (){},
                           child:Text("Need help? Contact us",style: TextStyle(color:Color(0xffDAFFFB) ,fontSize: 13,) ,

                    ))],
                    )

                )
                )]))])));

  }




  }

//   final Function()? onTap;
//   LoadingPage({super.key, required this.onTap});
//
//   @override
//   State<LoadingPage> createState() => _LoadingPageState();
// }

// class _LoadingPageState extends State<LoadingPage> {
//   final usernameController = TextEditingController();
//
//   final passwordController = TextEditingController();
//
//   void signUserIn() async {
//     showDialog(
//         context: context,
//         builder: (context) {
//           return const Center(
//             child: CircularProgressIndicator(),
//           );
//         });
//
//     try {
//       await FirebaseAuth.instance.signInWithEmailAndPassword(
//           email: usernameController.text, password: passwordController.text);
//       Navigator.pop(context);
//     } on FirebaseAuthException catch (e) {
//       Navigator.pop(context);
//       if (e.code == 'user-not-found') {
//         wrongEmailMessage();
//       } else if (e.code == 'wrong-password') wrongPasswordMessage();
//     }
//   }
//
//   void wrongEmailMessage() {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return const AlertDialog(
//           title: Text('Incorrect EMAIL'),
//         );
//       },
//     );
//   }
//
//   void wrongPasswordMessage() {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return const AlertDialog(
//           title: Text('Incorrect Password'),
//         );
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Colors.grey.shade300,
//       body: SafeArea(
//           child: Center(
//             child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//               const SizedBox(height: 20),
//               Image.asset(
//                 'assets/images/Desginer.jpg',
//                 height: 200,
//                 width: double.infinity,
//               ),
//               const SizedBox(height: 40),
//               Text(
//                 'Welcome back you\'ve been missed!',
//                 style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
//               ),
//               const SizedBox(height: 25),
//               TextFormField(
//                 controller: usernameController,
//                 hintText: 'UserName',
//                 obscureText: false,
//               ),
//               const SizedBox(height: 10),
//               TextField(
//                 controller: passwordController,
//                 hintText: 'Password',
//                 obscureText: true,
//               ),
//               const SizedBox(height: 10),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Text(
//                       'Forgot Password?',
//                       style: TextStyle(color: Colors.grey.shade600),
//                     )
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 5),
//               InkWell(
//                   child:  Text: "Sign In",
//                   onTap: () {
//                     Navigator.of(context).push(
//                       MaterialPageRoute(
//                         builder: (context) => const HomePage(),
//                       ),
//                     );
//                   }),
//               const SizedBox(height: 50),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25),
//                 child: Row(children: [
//                   Expanded(
//                     child: Divider(
//                       thickness: 0.5,
//                       color: Colors.grey.shade400,
//                     ),
//                   ),
//                   Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 10),
//                       child: Text(
//                         'Or continue with',
//                         style: TextStyle(color: Colors.grey.shade700),
//                       )),
//                   Expanded(
//                     child: Divider(
//                       thickness: 0.5,
//                       color: Colors.grey.shade400,
//                     ),
//                   )
//                 ]),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   GestureDetector(
//                       onTap: () => AuthService().signInWithGoogle(),
//                       child:
//                       const SquareTile(imagePath: 'assets/images/google.png'))
//                 ],
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     'Not a member?',
//                     style: TextStyle(color: Colors.grey.shade700),
//                   ),
//                   const SizedBox(
//                     width: 4,
//                   ),
//                   GestureDetector(
//                     onTap: widget.onTap,
//                     child: const Text(
//                       'Register now',
//                       style: TextStyle(
//                           color: Colors.blue, fontWeight: FontWeight.bold),
//                     ),
//                   )
//                 ],
//               )
//             ]),
//           )),
//     );
//   }
// }