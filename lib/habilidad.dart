import 'package:flutter/material.dart';
import 'package:mypersonal3dcv/textlink.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Habilidad extends StatelessWidget {
  final String imagePath;
  final String title;
  final double fontSize;
  final Color fontColor;
  final String url;
  final String toolTip;
  const Habilidad(
      {this.imagePath,
      this.title,
      this.url: "",
      this.fontSize: 25,
      this.toolTip,
      this.fontColor: Colors.white,
      Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizing) => Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Image.asset(imagePath),
              width: sizing.isMobile ? 25 : 50,
              height: sizing.isMobile ? 25 : 50,
            ),
            Padding(
              padding: EdgeInsets.only(left: sizing.isMobile ? 7 : 15),
              child: TextLink(
                text: title,
                url: url,
                toolTip: toolTip,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
