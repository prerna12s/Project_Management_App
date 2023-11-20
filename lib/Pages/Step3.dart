import 'package:flutter/material.dart';
import 'package:project_management_/Components/text_field.dart';
import 'package:project_management_/Pages/Step2.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({super.key});

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF001C30),
        // appBar: AppBar(
        //   backgroundColor: const Color(0xFF001C30),
        //   leading: IconButton(
        //       onPressed: () {
        //         Navigator.push(context,
        //             MaterialPageRoute(builder: (context) => const Step2()));
        //       },
        //       icon: const Icon(
        //         Icons.arrow_back,
        //         color: Color(0xff176B87),
        //         size: 40,
        //       )),
        // ),
        body: Container(
          margin: const EdgeInsets.only(left: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const Padding(padding: EdgeInsets.only(top: 19)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // const Padding(padding: EdgeInsets.only(left: 10)),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Step2()));
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Color(0xff176B87),
                        size: 40,
                      )),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 60,
                    width: 240,
                    child: Image.asset('assets/step 2.png'),
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
              // const SizedBox(
              //   width: 14,
              // ),
              const SizedBox(
                width: 324,
                child: Text(
                  "Set a username which will appear to your team members",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff176B87),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    height: 0,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Container(
              //   width: 391,
              //   height: 62,
              //   decoration: ShapeDecoration(
              //     color: Colors.white.withOpacity(0.30000001192092896),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(30),
              //     ),
              //     shadows: const [
              //       BoxShadow(
              //         color: Color(0x3F000000),
              //         blurRadius: 4,
              //         offset: Offset(0, 4),
              //         spreadRadius: 0,
              //       )
              //     ],
              //   ),
              // )
              MyTextField(
                  controller: usernameController,
                  hintText: "Username",
                  obscureText: false),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: 24,
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
                          fontSize: 14,
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
                height: 10,
              ),
              const SizedBox(
                width: 324,
                child: Text(
                  'Do you want to receive notifications?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF176B87),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 38,
                  ),
                  Container(
                    width: 27,
                    height: 27,
                    decoration: const ShapeDecoration(
                      color: Color(0xFF176B87),
                      shape: OvalBorder(
                        side: BorderSide(width: 5, color: Color(0xFFDAFFFB)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text(
                    'Yes',
                    style: TextStyle(
                      color: Color(0xFF176B87),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 38,
                  ),
                  Container(
                    width: 27,
                    height: 27,
                    decoration: const ShapeDecoration(
                      color: Color(0xFF176B87),
                      shape: OvalBorder(),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text(
                    'No',
                    style: TextStyle(
                      color: Color(0xFF176B87),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 195,
              ),
              SizedBox(
                height: 56,
                // width: MediaQuery.of(context).size.width / 1.2,
                width: 392,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Step2()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFDAFFFB),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: const Text(
                      'Next',
                      style: TextStyle(
                        color: Color(0xFF176B87),
                        fontSize: 40,
                      ),
                    )),
              ),
              const SizedBox(
                height: 8,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(105, 0, 0, 0),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Need help?',
                        style: TextStyle(
                          color: Color(0xFF176B87),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: ' Contact us',
                        style: TextStyle(
                          color: Color(0xFFDAFFFB),
                          fontSize: 16,
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
              const Padding(
                padding: EdgeInsets.fromLTRB(150, 0, 0, 0),
                child: Text(
                  'App_Name',
                  style: TextStyle(
                    color: Color(0xFF176B87),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
