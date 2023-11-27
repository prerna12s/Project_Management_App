import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_management_/Pages/Addtask.dart';

import '../screens/taskIndicator.dart';




class Worklist extends StatefulWidget {
  const Worklist({super.key});

  @override
  State<Worklist> createState() => _WorklistState();
}

class _WorklistState extends State<Worklist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>AddTask()));
      },
        backgroundColor: Color(0xffDAFFFB),
        tooltip: 'Add Task',
        splashColor: CupertinoColors.black,
        child: Icon(Icons.calendar_today_outlined,
          color: Color(0xff176B87),
          size: 35,
        ),
          ),
      backgroundColor: Color(0xFF001C30),

      body:

      Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('images/bg app oss.png'),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left:20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height:60),
              Text("Worklist",
                style:GoogleFonts.poppins(
                  color: Color(0xFFDAFFFB),
                  fontSize:24,
                ),),
              SizedBox(
                  height: 10
              ),
              Container(
                height: 34,
                width:180,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(11),
                  color: Color(0xFFDAFFFB).withOpacity(0.2),
                ),
                child:
                Row(
                  children: [
                    IconButton(onPressed:(){}, icon: Icon(Icons.check_box_outline_blank_outlined)),
                    Text("Hide Completed",style:GoogleFonts.poppins(
                      color:Color(0xFFFFFFFF),
                      fontSize: 16,
                    ))
                  ],
                ),
              ),

              SizedBox(height:28),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    AboutTask(count: '1',text: 'Pending'),
                    SizedBox(width:10),
                    AboutTask(count: '2',text: 'Today'),
                    SizedBox(width:10),
                    AboutTask(count: '2',text: 'This Week'),
                    SizedBox(width:10),
                    AboutTask(count: '0',text: 'last'),
                  ],
                ),
              ),
              SizedBox(
                height: 27,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    TaskIndicator(task:'Task 1', color: 0xFFEA4335),
                    SizedBox(
                      height: 8,
                    ),
                    TaskIndicator(task:'Task 2', color: 0xFF34A853),
                    SizedBox(
                      height: 8,
                    ),
                    TaskIndicator(task:'Task 3', color: 0xFFFBBC05),
                  ],
                ),
              )





            ],),
        ),




      ),

    );
  }

}
class AboutTask extends StatefulWidget {
  final String text;
  final String count;
  const AboutTask({super.key,required this.count,required this.text});
  @override
  State<AboutTask> createState() => _AboutTaskState();
}
class _AboutTaskState extends State<AboutTask> {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 89,
      width:100,
      decoration: BoxDecoration(
        color: Color(0xFF176B87),
        shape:BoxShape.rectangle,
        borderRadius:BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          Text(widget.count,   style:GoogleFonts.poppins(
            color:Color(0xFFDAFFFB),
            fontSize: 32,
          )),
          Text(widget.text, style:GoogleFonts.poppins(
            color:Color(0xFFDAFFFB),
            fontSize: 16,
          ))
        ],
      ),
    );
  }
}