import'package:flutter/material.dart';

class Step_2 extends StatefulWidget {
  final String text;
  final String Tiletext1;
  final String Tiletext2;
  final String Tiletext3;
   Step_2({super.key,required this.text,required this.Tiletext1,required this.Tiletext2,required this.Tiletext3});

  @override
  State<Step_2> createState() => _Step_2State();
}

class _Step_2State extends State<Step_2> {
  String selecteditem=' ';
  TextEditingController textController=TextEditingController();
  void selectitem(String name){
    setState(() {
      Navigator.pop(context);
      selecteditem =name;
      textController.text=selecteditem;
    });
  }
@override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Color(0xFF001C30),

      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
            children: [

              Row(
                children: [
                  Text(widget.text, style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),),
                  Expanded(
                    child: TextFormField(
                      onTap: () {
                        _onbuttonpressed(context);

                      },
                      maxLines: 2,
                      controller: textController,
                       onFieldSubmitted: (value) {
                       },
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          backgroundColor: Colors.yellowAccent,
                          color: Colors.white,
                        ),
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5)),
                            borderSide: BorderSide(
                                color: Colors.greenAccent, strokeAlign: 10)),
                       ),),
                  ),
                ],
              )
            ]),
      ),
    );
  }
  void _onbuttonpressed(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context) {
      return Column(
        children: [
          ListTile(
            title: Text(widget.Tiletext1),
            onTap: () => selectitem(widget.Tiletext1),
          ),
          ListTile(
            title: Text(widget.Tiletext2,style: TextStyle(
              color: Colors.black,
            ),),
            onTap: () => selectitem(widget.Tiletext2),
          ),
          ListTile(
            title: Text(widget.Tiletext3),
            onTap: () => selectitem(widget.Tiletext3),
          ),
        ],

      );
    });
  }
    }

// Expanded(
// child: TextFormField(
// onTap: () {
// _onbuttonpressed;
// },
// maxLines: 2,
//
// controller: textController,
// decoration: InputDecoration(
// border: UnderlineInputBorder(
// borderRadius: BorderRadius.only(
// topRight: Radius.circular(5)),
// borderSide: BorderSide(
// color: Colors.white, strokeAlign: 2)),
// hintText: 'Enter Name',
// hintStyle: TextStyle(
// color: Colors.white,
// fontSize: 20,
//
// Expanded(child: IconButton(onPressed: (){
// _onbuttonpressed(context);
// }, iconSize: 150,
// icon: Icon(Icons.horizontal_rule_sharp,color: Colors.white,))),
