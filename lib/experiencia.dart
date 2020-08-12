import 'package:mypersonal3dcv/seccion.dart';
import 'package:flutter/material.dart';
import 'package:mypersonal3dcv/textlink.dart';

class Experiencia extends StatelessWidget {
  const Experiencia({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SeccionCV(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextLink(
            text: """- Sabowsla Games (Bucaramanga, CO)""",
            url: "www.sabowsla.com",
            toolTip:
                "Trabajé como diseñador generalista y programador para la creacion de juegos 3D",
            padding: EdgeInsets.only(bottom: 5),
          ),
          TextLink(
            padding: EdgeInsets.only(bottom: 5),
            text: "- Contractor Independiente (Bucaramanga, CO)",
            toolTip:
                "Trabaje como editor de videos para Youtubers y Cantantes.",
          ),
          TextLink(
            padding: EdgeInsets.only(bottom: 5),
            text: "- Proyecto Personal",
            url: "https://sabowslau.github.io/Analisis-Pinch/#/",
            toolTip:
                "Aplicacion para calculo de analisis de sistemas de transferencia de calor",
          ),
          TextLink(
            padding: EdgeInsets.only(bottom: 5),
            text: """- Proyecto Personal""",
            url: "https://sabowslau.github.io/Sashimetri/#/",
            toolTip: "Aplicacion para la creacion de figuras geometricas",
          ),
        ],
      ),
      title: "EXPERIENCIA",
    );
  }
}
