import 'package:flutter/material.dart';

class Habilidad extends StatelessWidget {
  final String imagePath;
  final String title;
  final double fontSize;
  final Color fontColor;
  const Habilidad(
      {this.imagePath,
      this.title,
      this.fontSize: 25,
      this.fontColor: Colors.white,
      Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Image.asset(imagePath),
            width: 50,
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: fontSize,
                color: fontColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
