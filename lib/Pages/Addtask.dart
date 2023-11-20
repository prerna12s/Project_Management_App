import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_management_/widgets/WriteBox.dart';

import '../widgets/Line.dart';
class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF001C30),

       body: SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.only(top:70,left:10),
           child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text("Add Task ",style:GoogleFonts.poppins(
                  color: Color(0xFFDAFFFB),
                  fontSize:20,
                ),),
                Line(),
                SizedBox(
                  height:30
                ),
                Text("Task Name ",style:GoogleFonts.poppins(
                  color: Color(0xFFDAFFFB),
                  fontSize:18,
                ),),
               WriteBox(Text: 'Task Name'),
                Line(width: 1,padding: 10),
                Text("Members ",style:GoogleFonts.poppins(
                  color: Color(0xFFDAFFFB),
                  fontSize:18,
                ),),
                WriteBox(Text:'Emails separated by,'),
                Line(width: 1,padding: 10),
                Text("Item name ",style:GoogleFonts.poppins(
                  color: Color(0xFFDAFFFB),
                  fontSize:18,
                ),),
                WriteBox(Text:'Initial Item Name,',),
                Line(width: 1,padding: 10),

                WriteBox(Text:'Description,'),
                Line(width: 1,padding: 10),
               Padding(
                 padding: EdgeInsets.only(left:MediaQuery.of(context).size.width/1.3,top:20),
                 child: ElevatedButton(onPressed: (){},
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Color(0xFF176B87),
                   ),
                   child: Text(
                   'Add',style:GoogleFonts.poppins(
                   color: Color(0xFFDAFFFB),
                   fontSize:18,
                 ),
                 ),),
               )

              ],
            ),
         ),
       ),
    );

  }
}
