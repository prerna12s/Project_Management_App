import 'package:flutter/material.dart';
import 'package:project_management_/components/Rectangle_container.dart';

class AddProject extends StatefulWidget {
  const AddProject({super.key});

  @override
  State<AddProject> createState() => _AddProjectState();
}

class _AddProjectState extends State<AddProject> {
  final SearchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001C30),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:  BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage("assets/bg app oss.png"))),
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                IconButton(
                    onPressed:(){
                      Navigator.pop(context);
                      },
                    icon: Icon(Icons.arrow_back,
                      color: Colors.white
                    )
                ),
                SizedBox(height: 20),
                const Text(
                  'Add Project',
                  style: TextStyle(
                    color: Color(0xFFDAFFFB),
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                  width: 157,
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFDAFFFB),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Project name',
                  style: TextStyle(
                    color: Color(0xFFDAFFFB),
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,

                  ),
                ),
                SizedBox(
                  height: 5,
                ),

                Container(
                  height: 65,
                  child: MyContainerField(
                      controller: SearchController, hintText: 'Project Name'),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  width: 410,
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0x7FDAFFFB),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Members',
                  style: TextStyle(
                    color: Color(0xFFDAFFFB),
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    height: 0,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                SizedBox(
                  height: 75,
                  child: MyContainerField(
                      controller: SearchController,
                      hintText: "Emails "),
                ),

                SizedBox(
                  height: 6,
                ),
                Container(
                  width: 410,
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0x7FDAFFFB),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  'Item name',
                  style: TextStyle(
                    color: Color(0xFFDAFFFB),
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    height: 0,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                SizedBox(
                  height: 70,
                  child: MyContainerField(
                      controller: SearchController, hintText: "Inital item name"),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  width: 410,
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0x7FDAFFFB),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 35,
                ),


                  Row(

                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                       width: 240,
                      ),
                      Container(
                        width: 102,
                        height: 38,
                        // decoration: BoxDecoration(

                        // ),
                        color: Color(0xFF176B87),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 23, vertical: 3),
                          child: const Text(
                            'Add',
                            // textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFDAFFFB),
                              fontSize: 26,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}