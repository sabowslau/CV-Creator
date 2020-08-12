import 'package:flutter/material.dart';
import 'package:mypersonal3dcv/educacion.dart';
import 'package:mypersonal3dcv/experiencia.dart';
import 'package:mypersonal3dcv/habilidades.dart';
import 'package:mypersonal3dcv/idiomas.dart';
import 'package:mypersonal3dcv/perfil.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "V1.1.1 Upcoming Feature",
        child: Icon(Icons.picture_as_pdf),
        backgroundColor: Colors.grey.shade800,
      ),
      body: Center(
        child: InteractiveViewer(
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
                      filas: 3,
                      habilidades: [
                        ["After Effects", "aeicon.png", ""],
                        ["Premiere Pro", "pricon.png", ""],
                        ["Photoshop", "psicon.png", ""],
                        ["Blender", "blendericon.png", ""],
                        [
                          "Unity",
                          "unityicon.png",
                          "Experiencia con unity para la "
                        ],
                        [
                          "Solid Works",
                          "swicon.png",
                          "Proficiente En Diseño Parametrico"
                        ],
                        ["Dart", "darticon.png", "Proficiente en Dart"],
                        ["C#", "csharp.png", "Proficiente en C#"],
                        [
                          "Git",
                          "git.png",
                          "Conocimientos en control de la version"
                        ],
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
      ),
    );
  }
}
