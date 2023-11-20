import 'package:flutter/material.dart';
import 'package:project_management_/Pages/Signup.dart';
import 'package:google_fonts/google_fonts.dart';

class Step2 extends StatefulWidget {
  const Step2({super.key});

  @override
  State<Step2> createState() => _Step2State();
}

class _Step2State extends State<Step2> {
final _controller=TextEditingController();
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF001C30),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                          builder: (context) => LoadingPage()));
                    },
                    icon: const Icon(Icons.arrow_back,color: Color(0xff176B87),size: 40,)),
              ],
            ),
            const Padding(
                padding: EdgeInsets.only(top: 30, left: 20, right: 20)),
            const Row(
              children: [
                SizedBox(
                  width:15,
                ),
                // Text('Step 2',style: GoogleFonts.poppins(color: Color(0xffDAFFFB),fontSize: 40),),
                Text(
                  "Step 2",
                 style: TextStyle(color: Color(0xffDAFFFB),fontSize: 40),
                 // style: const GoogleFonts.poppins(TextStyle(color: Color(0xffDAFFFB),fontSize: 40))
                  ),
                    // color: Color(0xffDAFFFB),fontSize: 40)
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              width: 358,
              child: Text(
                'Set up your account to create the best user experience',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF176B87),
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  // fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
            const SizedBox(
              height: 15,

            ),


             Container(
                margin: const EdgeInsets.only(left: 10.0, right: 20.0,),
               child: Divider(
                color:  Color(0xff176B87),
                height: 30.0,
                thickness: 1.5,

            ),
             ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20)),
                const Text(
                  'I’m here for',
                  style: TextStyle(
                    color: Color(0xFF176B87),
                    fontSize: 20,
                    fontFamily: 'Poppins',

                    height: 0,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      backgroundColor: Color(0xff001C30),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28),),
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  title: const Text('Company Work',style: TextStyle(color: Color(0xffDAFFFB),fontSize: 25),),
                                  onTap: () {},
                                ),
                          Container(
                          margin: const EdgeInsets.only(left: 10.0, right: 20.0,),
                          child: Divider(
                          color:  Color(0xffDAFFFB),
                          height: 30.0,
                          thickness: 1.5,

                          ),),
                               ListTile(
                                  title: const Text('School Work',style: TextStyle(color: Color(0xffDAFFFB),fontSize: 25),),
                                  onTap: () {},
                                ),Container(
                                  margin: const EdgeInsets.only(left: 10.0, right: 20.0,),
                                  child: Divider(
                                    color:  Color(0xffDAFFFB),
                                    height: 30.0,
                                    thickness: 1.5,

                                  ),),
                                ListTile(
                                  title: const Text('Bussiness',style: TextStyle(color: Color(0xffDAFFFB),fontSize: 25),),
                                  onTap: () {

                                  },
                                ), Container(
                                  margin: const EdgeInsets.only(left: 10.0, right: 20.0,),
                                  child: Divider(
                                    color:  Color(0xffDAFFFB),
                                    height: 30.0,
                                    thickness: 1.5,

                                  ),), ListTile(
                                  title: const Text('Personal',style: TextStyle(color: Color(0xffDAFFFB),fontSize: 25),),
                                  onTap: () {
                                    _updateTextField('Option 1');
                                    Navigator.pop(context);
                                  },
                                ),
                          ],
                            ),
                          );
                        });
                  },
                  child: Container(
                    child: TextFormField(

                      decoration: InputDecoration(
                     fillColor: Color(0xff176B87),),),

                    width: 200,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          // strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFF176B87),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        
      )

    );

  }
}
void _updateTextField (String value) {
  int _counter=0;
  TextEditingController _textEditingController = TextEditingController();
//   setState(() {
//
//     _textEditingController.text = value;
//   });
// }

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('BottomSheet to Text Field'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Selected Value:'),
          TextField(

            readOnly: true,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
  showModalBottomSheet(
  backgroundColor: Color(0xff001C30),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28),),
  context: context,
  builder: (BuildContext context) {
  return Container(
  padding: const EdgeInsets.all(16),
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[
  ListTile(
  title: const Text('Company Work',style: TextStyle(color: Color(0xffDAFFFB),fontSize: 25),),
  onTap: () {},
  ),
  Container(
  margin: const EdgeInsets.only(left: 10.0, right: 20.0,),
  child: Divider(
  color:  Color(0xffDAFFFB),
  height: 30.0,
  thickness: 1.5,

  ),),
  ListTile(
  title: const Text('School Work',style: TextStyle(color: Color(0xffDAFFFB),fontSize: 25),),
  onTap: () {},
  ),Container(
  margin: const EdgeInsets.only(left: 10.0, right: 20.0,),
  child: Divider(
  color:  Color(0xffDAFFFB),
  height: 30.0,
  thickness: 1.5,

  ),),
  ListTile(
  title: const Text('Bussiness',style: TextStyle(color: Color(0xffDAFFFB),fontSize: 25),),
  onTap: () {

  },
  ), Container(
  margin: const EdgeInsets.only(left: 10.0, right: 20.0,),
  child: Divider(
  color:  Color(0xffDAFFFB),
  height: 30.0,
  thickness: 1.5,

  ),), ListTile(
  title: const Text('Personal',style: TextStyle(color: Color(0xffDAFFFB),fontSize: 25),),
  onTap: () {
  _updateTextField('Option 1');
  Navigator.pop(context);
  },
  ),
  ],
  ),
  );
  });
  },

            child: null,
          ),
        ],
      ),
    ),
  );
}}
