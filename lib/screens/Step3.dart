import 'package:flutter/material.dart';
import 'package:project_management_/Components/text_field.dart';
import 'package:project_management_/Pages/SignUp.dart';
import 'package:project_management_/Pages/login_finish.dart';


class Step3 extends StatefulWidget {
  const Step3({super.key});

  @override
  State<Step3> createState() => _Step3State();
}

class _Step3State extends State<Step3> {
  final usernameController = TextEditingController();
  String? _selectedValue;

  final passwordController = TextEditingController();

  @override

  void initState(){
    _selectedValue = 'Yes/No';
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
        backgroundColor: const Color(0xFF001C30),
        body: Container(
           margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUp()));
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Color(0xff176B87),
                        size: 40,
                      )
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 60,
                    width: 240,
                    child: Image.asset('assets/step2.png'),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),

              const Text(
                "Step 3",
                style: TextStyle(
                  color: Color(0xffDAFFFB),
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  height: 0,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: 358,
                child: Text(
                  "We're almost there",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff176B87),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    height: 0,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                // thickness: 392,
                height: 25,
                color: Color(0xff176B87),
              ),
              const SizedBox(
                height: 20,
              ),

               Text(
                  "Set a username ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff176B87),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',

                  ),
                ),

              const SizedBox(
                height: 10,
              ),
              MyTextField(
                  controller: usernameController,
                  hintText: "Username",
                  obscureText: false),
              const SizedBox(
                height: 40,
              ),


              const SizedBox(
                width: 324,
                child: Text.rich(
                  // textAlign: TextAlign.center,
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Set a strong password. ',
                        style: TextStyle(
                          color: Color(0xFF176B87),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'Suggest password',
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
                height: 10,
              ),
              MyTextField(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [

                  Text(
                    'Do you want to receive notifications?',

                    style: TextStyle(
                      color: Color(0xFF176B87),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    '$_selectedValue',

                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ],
              ),
              ListTile(
                horizontalTitleGap: 2,
                title: Text('Yes',
                style: TextStyle(
                  color: Color(0xFF176B87),
                  fontSize: 17
                ),),
                leading: Radio(
                  activeColor:  Color(0xFF176B87),
                  value: 'Yes',
                  groupValue: _selectedValue,
                  onChanged: _changes,
                ),
              ),
              ListTile(
                horizontalTitleGap: 2,

                title: Text('No',
                  style: TextStyle(
                      color: Color(0xFF176B87),
                      fontSize: 17
                  ),),
                leading: Radio(
                  activeColor:  Color(0xFF176B87),
                  value: 'No',
                  groupValue: _selectedValue,
                  onChanged: _changes,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:20),
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
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) =>Login_finish() ) );
                      },

                      child: Text('Next',style:TextStyle(
                        color:Color(0xff176B87),
                        fontSize: 28,
                        fontWeight:FontWeight.bold,
                      )
                      ),
                    )
                ),
              ),
              const SizedBox(
                height: 19,
              ),
               Center(
                 child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Need help?',
                          style: TextStyle(
                            color: Color(0xFF176B87),
                            fontSize: 10,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: ' Contact us',
                          style: TextStyle(
                            color: Color(0xFFDAFFFB),
                            fontSize: 10,
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
                height: 3,
              ),
               Center(
                 child: Text(
                    'Project Management App',
                    style: TextStyle(
                      color: Color(0xFF176B87),
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
               ),

            ],
          ),
        ),
      );

  }
  void _changes(String?value){
    setState(() {
      _selectedValue =value;
    });
  }
}
