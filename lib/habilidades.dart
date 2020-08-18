import 'package:mypersonal3dcv/habilidad.dart';
import 'package:mypersonal3dcv/seccion.dart';

import 'package:flutter/material.dart';

class Habilidades extends StatelessWidget {
  final List<HabilidadModel> habilidades;
  final int filas;
  Habilidades({Key key, this.habilidades, this.filas: 2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SeccionCV(
      title: "HABILIDADES                ",
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: filas,
          childAspectRatio: 2.5,
        ),
        itemCount: habilidades.length,
        itemBuilder: (context, index) {
          return GridTile(
              child: Habilidad(
            title: habilidades[index].text,
            imagePath: habilidades[index].urlIcon,
            toolTip: habilidades[index].toolTip,
          ));
        },
      ),
    );
  }
}

class HabilidadModel {
  String urlIcon;
  String text;
  String toolTip;
  HabilidadModel({this.urlIcon: "", this.text: "", this.toolTip: ""});
}
