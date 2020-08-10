import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart' as fonts;

class SeccionCV extends StatelessWidget {
  final String title;
  final double fontSize;
  final Widget child;
  const SeccionCV({this.title, this.fontSize: 35, this.child, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 15),
            color: Colors.white,
            height: 5,
          ),
          if (child != null) child,
        ],
      ),
    );
  }
}
