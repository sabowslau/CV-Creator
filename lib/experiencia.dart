import 'package:mypersonal3dcv/seccion.dart';
import 'package:flutter/material.dart';
import 'package:mypersonal3dcv/text_link_model.dart';
import 'package:mypersonal3dcv/textlink.dart';

class Experiencia extends StatelessWidget {
  final List<TextLinkModel> textLinks;
  Experiencia({Key key, @required this.textLinks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SeccionCV(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: textLinks
            .map(
              (e) => TextLink(
                text: e.text,
                toolTip: e.toolTip,
                url: e.launchURL,
              ),
            )
            .toList(),
      ),
      title: "EXPERIENCIA",
    );
  }
}
