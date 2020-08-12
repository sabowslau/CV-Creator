import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mypersonal3dcv/textlink.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Perfil extends StatelessWidget {
  const Perfil({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizing) => Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Container(
              width: sizing.isMobile ? 100 : 120,
              height: sizing.isMobile ? 100 : 120,
              child: Image.asset("foto.png"),
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jhonatan Sabayé",
                    style: TextStyle(
                      fontSize: sizing.isMobile ? 25 : 45,
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
                        padding: const EdgeInsets.all(8.0),
                        child: TextLink(
                          text: "Artstation",
                          url: "https://www.artstation.com/sabowsla",
                          toolTip: "artstation.com/sabowsla",
                        ),
                      ),
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
