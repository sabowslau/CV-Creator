import 'package:mypersonal3dcv/habilidad.dart';
import 'package:mypersonal3dcv/seccion.dart';

import 'package:flutter/material.dart';

class Habilidades extends StatelessWidget {
  final List<List<String>> habilidades;
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
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 4),
        ),
        itemCount: habilidades.length,
        itemBuilder: (context, index) {
          return GridTile(
              child: Habilidad(
            title: habilidades[index][0],
            imagePath: habilidades[index][1],
          ));
        },
      ),
    );
  }
}
