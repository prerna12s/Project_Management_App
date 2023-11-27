import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class WriteBox extends StatefulWidget {
  final String Text;
  final int minlines;
  final int maxlines;
  final TextEditingController controller;
  const WriteBox({super.key,required this.Text,this.minlines=1,this.maxlines=3,required this.controller});

  @override
  State<WriteBox> createState() => _WriteBoxState();
}

class _WriteBoxState extends State<WriteBox> {

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top:8),
      child: TextField(
        keyboardType: TextInputType.multiline,
        minLines: widget.minlines,
        maxLines: widget.maxlines,
        controller: widget.controller,
        decoration: InputDecoration(
            fillColor: Color(0xFFDAFFFB).withOpacity(0.2),
            filled: true,


            hintText: widget.Text,
            hintStyle: GoogleFonts.poppins(
              fontSize: 18,
              color: Color(0xFFDAFFFB).withOpacity(0.6),
            )
        ),
      ),
    );
  }
}