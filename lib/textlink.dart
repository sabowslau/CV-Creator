import 'package:flutter/material.dart';
import 'package:mypersonal3dcv/text_link_model.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:url_launcher/url_launcher.dart';

class TextLink extends StatefulWidget {
  final TextLinkModel model;
  final String text;
  final IconData icon;
  final String url;
  final String toolTip;
  final onTap;
  final EdgeInsets padding;
  const TextLink({
    this.text: "",
    this.url: "",
    this.toolTip: "",
    Key key,
    this.padding: const EdgeInsets.only(bottom: 5),
    this.onTap,
    this.icon,
    this.model,
  }) : super(key: key);

  @override
  _TextLinkState createState() => _TextLinkState();
}

class _TextLinkState extends State<TextLink> {
  bool state = false;

  _launchURL() async {
    if (widget.url != "") await launch(widget.url);
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Padding(
        padding: widget.padding,
        child: Tooltip(
          message: widget.toolTip,
          child: Row(children: [
            if (widget.icon != null)
              Padding(
                padding: const EdgeInsets.only(right: 5, left: 5),
                child: Icon(
                  widget.icon,
                  color: Colors.white,
                  size: sizingInformation.isMobile ? 15 : 20,
                ),
              ),
            InkWell(
              onHover: (newState) {
                setState(() {
                  if (widget.url != "") state = newState;
                });
              },
              child: Text(
                widget.text,
                style: state
                    ? TextStyle(
                        color: Colors.white,
                        fontSize: sizingInformation.isMobile ? 12 : 15,
                        decoration: TextDecoration.underline,
                      )
                    : TextStyle(
                        color: Colors.white,
                        fontSize: sizingInformation.isMobile ? 12 : 15,
                      ),
              ),
              onTap: () {
                try {
                  _launchURL();
                  widget.onTap();
                } catch (e) {}
              },
            ),
          ]),
        ),
      ),
    );
  }
}
