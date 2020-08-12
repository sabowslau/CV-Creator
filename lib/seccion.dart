import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SeccionCV extends StatelessWidget {
  final String title;
  final double fontSize;
  final Widget child;

  SeccionCV({this.title, this.fontSize: 35, this.child, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Padding(
        padding: sizingInformation.isMobile
            ? const EdgeInsets.only(left: 20, right: 20, bottom: 5)
            : const EdgeInsets.only(left: 20, right: 20, bottom: 20),
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
                  fontSize: sizingInformation.isMobile ? 20 : fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 15),
              color: Colors.white,
              height: sizingInformation.isMobile ? 2 : 5,
            ),
            if (child != null) child,
          ],
        ),
      ),
    );
  }
}
