import 'package:flutter/material.dart';
class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Add Project "),
       Line(),
        Text("Project Name ",style:TextStyle(
          fontSize:30,
        )),
        Container(
          child: TextFormField(
             minLines: 1,
              maxLines: 4,
           decoration: InputDecoration(
          hintText: 'Project name'
          ),
    ),),
      ],
    );
  }
}
class Line extends StatefulWidget {
  const Line({super.key});

  @override
  State<Line> createState() => _LineState();
}

class _LineState extends State<Line> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 1,
      width:50,
      decoration: BoxDecoration(
        color: Color(0xFF176B87),
      ),
    );
  }
}
