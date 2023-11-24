import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/text_field.dart';


class Inbox extends StatefulWidget {
  const Inbox({super.key});

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  final SearchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: Color(0xffDAFFFB),
        tooltip: 'silent',
        splashColor: CupertinoColors.black,
        child: Icon(Icons.notifications_off,
          color: Color(0xff176B87),
          size: 35,
        ),
      ),
      backgroundColor: const Color(0xFF001C30),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/bg app oss.png"),
            )),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                "Inbox",
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: Color(0xFFDAFFFB),
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              MyTextField(
                  controller: SearchController,
                  hintText: 'Search',
                  obscureText: false),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 10, right: 10),
                    width: 40,
                    height: 36,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF176B87),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'All',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 10, right: 10),
                    width: 75,
                    height: 36,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF176B87),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Unread',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 10, right: 10),
                    width: 87,
                    height: 36,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF176B87),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Mentions',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 10, right: 10),
                    width: 89,
                    height: 36,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF176B87),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Assigned',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  
                  
                ],
              ),
              SizedBox(height: 90 ),
              Center(
                child: Container(
                  height: 120,
                  width: 120,
                  child: Image(image: AssetImage('assets/notify.png')),
                ),
                
                
              ),
              SizedBox(height: 20),
              Center(
                child: Text('Looks like you have no notifications !!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color(0xff176B87)
                  ) ,),
              )
            ],
          ),
        ),
      ),
    );
  }
}