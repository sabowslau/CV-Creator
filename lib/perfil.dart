import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mypersonal3dcv/textlink.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;
import 'package:flutter_email_sender/flutter_email_sender.dart';

class Perfil extends StatelessWidget {
  const Perfil({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizing) => Padding(
        padding: EdgeInsets.all(
          sizing.isMobile ? 10 : 20,
        ),
        child: Row(
          children: [
            Container(
              width: sizing.isMobile ? 80 : 120,
              height: sizing.isMobile ? 80 : 120,
              child: Image.asset("foto.png"),
            ),
            Expanded(
                child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: sizing.isMobile ? 20 : 40),
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
                      Padding(
                        padding: const EdgeInsets.all(2),
                        child: Icon(
                          FontAwesomeIcons.artstation,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2),
                        child: TextLink(
                          text: "Artstation",
                          url: "https://www.artstation.com/sabowsla",
                          toolTip: "artstation.com/sabowsla",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                          bottom: 2,
                          top: 2,
                          right: 2,
                        ),
                        child: Icon(
                          FontAwesomeIcons.github,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2),
                        child: TextLink(
                          text: "Github",
                          url: "https://github.com/sabowslau",
                          toolTip: "github.com/sabowslau",
                        ),
                      ),
                      IconTextLink(
                        icon: Icons.mail,
                        text: "Correo",
                        toolpTip: "jsabaye776@unab.edu.co",
                        url: "send",
                        onTap: () async {
                          downloadFile("jsabaye776@unab.edu.co");
                          final Email email = Email(
                            body: 'Email body',
                            subject: 'Email subject',
                            recipients: ['example@example.com'],
                            cc: ['cc@example.com'],
                            bcc: ['bcc@example.com'],
                            attachmentPaths: ['/path/to/attachment.zip'],
                            isHTML: false,
                          );

                          await FlutterEmailSender.send(email);
                        },
                      )
                    ],
                  )
                ],
              ),
            ))
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

void downloadFile(String url) {
  html.AnchorElement anchorElement = new html.AnchorElement(href: url);
  anchorElement.download = url;
  anchorElement.click();
}
