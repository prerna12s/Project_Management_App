import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskIndicator extends StatefulWidget {
  final String task;
  const TaskIndicator({super.key,required this.task});

  @override
  State<TaskIndicator> createState() => _TaskIndicatorState();
}

class _TaskIndicatorState extends State<TaskIndicator> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height:56,
        width:MediaQuery.of(context).size.width/1.1,
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xFF176B87),width: 3),
        ),
        child:Stack(
          children: [
            Container(
              width: 20,
              color: Colors.green,
            ),
            Padding(
              padding: const EdgeInsets.only(top:10,left:30),
              child: Text(widget.task,style: GoogleFonts.poppins(
                color: Color(0xFFFFFFFF),
                fontSize: 16,
              ),),
            ),
          ],

        )



    );
  }
}