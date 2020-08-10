import 'package:flutter/material.dart';
import 'package:mypersonal3dcv/educacion.dart';
import 'package:mypersonal3dcv/experiencia.dart';
import 'package:mypersonal3dcv/habilidades.dart';
import 'package:mypersonal3dcv/idiomas.dart';
import 'package:mypersonal3dcv/perfil.dart';
import 'package:mypersonal3dcv/seccion.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hoja de Vida Jhonatan Sabayé',
      home: CV(),
    );
  }
}

class CV extends StatelessWidget {
  const CV({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          color: Color.fromARGB(255, 52, 55, 57),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 600),
            child: Center(
              child: Column(
                children: [
                  Perfil(),
                  Idioma(),
                  Habilidades(
                    habilidades: [
                      ["Blender", "blendericon.png"],
                      ["Unity", "unityicon.png"],
                      ["Photoshop", "psicon.png"],
                      ["After Effects", "aeicon.png"],
                      ["Solid Works", "swicon.png"],
                      ["Premiere Pro", "pricon.png"],
                    ],
                  ),
                  Experiencia(),
                  Educacion(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
