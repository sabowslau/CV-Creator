import 'package:mypersonal3dcv/seccion.dart';
import 'package:flutter/material.dart';

class Experiencia extends StatelessWidget {
  const Experiencia({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SeccionCV(
      child: Text(
        """- Sabowsla Games (Bucaramanga, CO)
   2019 - 2020 
   Trabajé como dieñador generalista para la creacion de 
   personajes y diseño ambiental""",
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
      title: "EXPERIENCIA",
    );
  }
}
