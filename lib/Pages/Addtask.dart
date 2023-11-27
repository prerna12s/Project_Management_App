import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_management_/screens/Line.dart';
import 'package:project_management_/screens/WriteBox.dart';
import 'package:http/http.dart'as http;

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  TextEditingController taskcontroller = TextEditingController();
  TextEditingController Descriptcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xFF001C30),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:40,left:20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(onPressed:(){Navigator.pop(context);}, icon: Icon(Icons.arrow_back,color: Colors.white,)),
              Text("Add Task ",style:GoogleFonts.poppins(
                color: Color(0xFFDAFFFB),
                fontSize:20,
              ),),
              Line(width: 0.5,
              ),
              SizedBox(
                  height:40
              ),
              Text("Task Name ",style:GoogleFonts.poppins(
                color: Color(0xFFDAFFFB),
                fontSize:18,
              ),),
              WriteBox(Text: 'Task Name',controller:taskcontroller ,),
              Line(width: 1,padding: 10),
              SizedBox(height:15),
              Text("Members ",style:GoogleFonts.poppins(
                color: Color(0xFFDAFFFB),
                fontSize:18,
              ),),

              WriteBox(Text:'Description,',controller: Descriptcontroller,maxlines:10,minlines:5),
              Line(width: 1,padding: 10),
              Padding(
                padding: EdgeInsets.only(left:MediaQuery.of(context).size.width/1.4,top:20),
                child: ElevatedButton(onPressed: (){
                  submitdata();
                },
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
  Future <void> submitdata()async{
    //Get data from form
    final title =taskcontroller.text;
    final description=Descriptcontroller.text;
    final body= {
      "title": title,
      "description": description,
      "is_completed": false,
    };
    //submit data to server
    final  url='https://api.nstack.in/v1/todos';
    final uri=Uri.parse(url);
    final response =await http.post(uri,body: jsonEncode(body),
      headers: {
        'Content-Type': 'application/json'
      },);

    //show success or fail message
    if(response.statusCode==201){
      print('Creation success');
    }
    else{
      print('Creation failed');
    }


    print(response.body);

  }
}