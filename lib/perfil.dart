import 'package:flutter/material.dart';
import 'package:mypersonal3dcv/text_link_model.dart';
import 'package:mypersonal3dcv/textlink.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'dart:html' as html;

class Perfil extends StatelessWidget {
  final String aboutMe;
  final List<TextLinkModel> topLinks;
  const Perfil({Key key, this.aboutMe, @required this.topLinks})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizing) => Padding(
        padding: EdgeInsets.all(
          sizing.isMobile ? 10 : 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: sizing.isMobile ? 80 : 120,
                  height: sizing.isMobile ? 80 : 120,
                  child: Image.asset("foto.png"),
                ),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: sizing.isMobile ? 20 : 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jhonatan Sabayé",
                        style: TextStyle(
                          fontSize: sizing.isMobile ? 20 : 45,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Row(
                        children: [
                          ...topLinks
                              .map((e) => TextLink(
                                    icon: e.icon,
                                    text: e.text,
                                    toolTip: e.toolTip,
                                    url: e.launchURL,
                                    onTap: e.onTap,
                                  ))
                              .toList(),
                        ],
                      )
                    ],
                  ),
                ))
              ],
            ),
            if (aboutMe != null)
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  aboutMe,
                  style: TextStyle(
                    fontSize: sizing.isMobile ? 15 : 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class IconTextLink extends StatelessWidget {
  final IconData icon;
  final String text;
  final String url;
  final String toolpTip;
  final onTap;
  const IconTextLink({
    this.icon,
    this.text,
    this.url,
    this.toolpTip,
    this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 8,
            bottom: 2,
            top: 2,
            right: 2,
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 19,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2),
          child: TextLink(
            text: text,
            url: url,
            toolTip: toolpTip,
            onTap: onTap,
          ),
        ),
      ],
    );
  }
}

void downloadFile(String file) {
  html.AnchorElement anchorElement = new html.AnchorElement(href: file);
  anchorElement.download = file;
  anchorElement.click();
}
