import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class TextLink extends StatefulWidget {
  final String text;
  final String url;
  final String toolTip;
  final onTap;
  const TextLink({
    this.text: "",
    this.url: "",
    this.toolTip: "",
    Key key,
    this.onTap,
  }) : super(key: key);

  @override
  _TextLinkState createState() => _TextLinkState();
}

class _TextLinkState extends State<TextLink> {
  bool state = false;

  _launchURL() async {
    String url = widget.url;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: widget.toolTip,
      child: InkWell(
        onHover: (newState) {
          setState(() {
            state = newState;
          });
        },
        child: AnimatedDefaultTextStyle(
          child: Text(
            widget.text,
          ),
          duration: const Duration(milliseconds: 200),
          curve: Curves.ease,
          style: state
              ? TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  decoration: TextDecoration.underline,
                )
              : TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
          overflow: TextOverflow.fade,
          softWrap: true,
        ),
        onTap: () {
          try {
            _launchURL();
            widget.onTap();
          } catch (e) {}
        },
      ),
    );
  }
}
