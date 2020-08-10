import 'package:mypersonal3dcv/habilidad.dart';
import 'package:mypersonal3dcv/seccion.dart';

import 'package:flutter/material.dart';

class Habilidades extends StatelessWidget {
  final List<List<String>> habilidades;

  Habilidades({Key key, this.habilidades}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> habilidadesRestantes() {
      List<Widget> temp = List<Widget>();

      for (int i = (habilidades.length / 2) as int;
          i < habilidades.length;
          i++) {
        temp.add(Habilidad(
          title: habilidades[i][0],
          imagePath: habilidades[i][1],
        ));
      }
      return temp;
    }

    List<Widget> mitadHablidades() {
      List<Widget> temp = List<Widget>();

      for (int i = 0; i < habilidades.length / 2; i++) {
        temp.add(Habilidad(
          title: habilidades[i][0],
          imagePath: habilidades[i][1],
        ));
      }
      return temp;
    }

    return SeccionCV(
      title: "HABILIDADES                ",
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: habilidadesRestantes(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: mitadHablidades(),
            ),
          ),
        ],
      ),
    );
  }
}
