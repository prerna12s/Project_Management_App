

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){

      },
        backgroundColor: Color(0xffDAFFFB),
        tooltip: 'Add Task',
        splashColor: CupertinoColors.black,
        child: Icon(Icons.add,
        color: Color(0xff176B87),
          size: 40,
        ),
      ),
      backgroundColor: Color(0xFF001C30),
      body: Column(
        children: [
          SizedBox(height: 50),
          Row(

            children: [
              SizedBox(width: 20 ),
              //logo of app
              Text('Project Management App',
               style: TextStyle(
                 color: Color(0xff176B87),
               ),),
            ],
          ),

          Padding(
            padding:  EdgeInsets.only(top:15,right:15,left:15),
            child: TextFormField(

              decoration: InputDecoration(
                  fillColor: Color(0x4DDAFFFB),
                  filled:true,
                  hintText: 'Search docs, files or projects',
                  hintStyle: TextStyle(color: Color(0xffDAFFFB)),
                  border:OutlineInputBorder(

                      borderRadius: BorderRadius.circular(35)
                  )
              ),
            ),
          ),
          SizedBox(height: 120),
          Container(
            width: 200,
            height: 200,
            child: Image(image: AssetImage('assets/null_image.png'),
            ),
          ),
          SizedBox(height: 20 ),
          Text('Looks like you have no files currently',
          style: TextStyle(
            fontSize: 18,
            color: Color(0xff176B87),
          ),)



        ],

      ),


    );
  }
}
