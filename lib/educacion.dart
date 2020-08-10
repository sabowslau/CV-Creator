import 'package:flutter/material.dart';
import 'package:mypersonal3dcv/seccion.dart';

class Educacion extends StatelessWidget {
  const Educacion({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SeccionCV(
      child: Text(
        """ - Universidad Autonoma de Bucaramanga (Bucaramanga, CO)
    2016 - Actualidad
    Ingenieria En Energia

- Autodidacta
   2016 - Actualidad
   Flutter
   Dart
   C#
""",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
      title: "EDUCACIÓN",
    );
  }
}
