import 'package:flutter/material.dart';
import 'package:mypersonal3dcv/educacion.dart';
import 'package:mypersonal3dcv/experiencia.dart';
import 'package:mypersonal3dcv/habilidades.dart';
import 'package:mypersonal3dcv/idiomas.dart';
import 'package:mypersonal3dcv/perfil.dart';
import 'dart:html' as html;
import 'dart:convert';

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
        tooltip: "Upcoming Feature",
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
                        ["After Effects", "aeicon.png"],
                        ["Premiere Pro", "pricon.png"],
                        ["Photoshop", "psicon.png"],
                        ["Blender", "blendericon.png"],
                        ["Unity", "unityicon.png"],
                        ["Solid Works", "swicon.png"],
                        ["Dart", "darticon.png"],
                        ["C#", "csharp.png"],
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
