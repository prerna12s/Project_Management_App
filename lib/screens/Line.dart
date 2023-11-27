import 'package:flutter/material.dart';

class Line extends StatefulWidget {
  final double width;
  final double padding;
  const Line({super.key, this.width=3.1, this.padding=6.0});

  @override
  State<Line> createState() => _LineState();
}

class _LineState extends State<Line> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(top:widget.padding),
      child: Container(
        height: 2,
        width:MediaQuery.of(context).size.width/widget.width,
        decoration: BoxDecoration(
          color: Color(0xFF176B87),
        ),
      ),
    );
  }
}