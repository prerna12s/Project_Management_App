

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class WriteBox extends StatefulWidget {
  final String Text;
  const WriteBox({super.key,required this.Text});

  @override
  State<WriteBox> createState() => _WriteBoxState();
}

class _WriteBoxState extends State<WriteBox> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top:8),
      child: TextFormField(
        minLines: 1,
        maxLines: 4,
        decoration: InputDecoration(
            fillColor: Color(0xFFDAFFFB).withOpacity(0.2),
            filled: true,
            disabledBorder:OutlineInputBorder(borderSide: BorderSide(width: 0,style: BorderStyle.none)),
            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
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
