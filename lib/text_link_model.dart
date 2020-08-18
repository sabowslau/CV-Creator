import 'package:flutter/cupertino.dart';

class TextLinkModel {
  String text;
  String toolTip;
  String launchURL;
  IconData icon;
  Function onTap;
  TextLinkModel(
      {this.text, this.toolTip, this.launchURL, this.icon, this.onTap});
}
