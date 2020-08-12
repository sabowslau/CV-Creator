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
            text: """- Sabowsla Games (Bucaramanga, CO)
   2019 - 2020 
   Trabajé como dieñador generalista para la creacion de 
   personajes y diseño ambiental.""",
            url: "https://sabowsla-c656a.firebaseapp.com/#/games",
            toolTip: "sabowsla.com/games",
            padding: EdgeInsets.only(bottom: 10),
          ),
          TextLink(
            text: """- Contractor Independiente (Bucaramanga, CO)
   2018 - 2020
  Edicion de videos y creacion de efectos.""",
          ),
          TextLink(
            text: """- Proyecto Personal
  Aplicacion para calculo de analisis de sistemas de transferencia de calor""",
            url: "",
          ),
        ],
      ),
      title: "EXPERIENCIA",
    );
  }
}
