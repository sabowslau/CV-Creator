import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mypersonal3dcv/cvType2.dart';
import 'package:mypersonal3dcv/perfil.dart';
import 'package:mypersonal3dcv/text_link_model.dart';
import 'package:url_launcher/url_launcher.dart';

import 'educacion.dart';
import 'experiencia.dart';
import 'habilidades.dart';
import 'idiomas.dart';

class CVType1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Uri _emailLaunchUri = Uri(
              scheme: 'mailto',
              path: 'jsabaye776@unab.edu.co',
              queryParameters: {
                'subject': 'Proceso⠀de⠀Contratacion',
                'body':
                    'Hola⠀Jhonatan,⠀Estuvimos⠀viendo⠀tu⠀hoja⠀de⠀vida⠀y⠀nos⠀encantaria⠀tenerte⠀en⠀nuestro⠀equipo⠀de⠀trabajo...'
              });

          launch(_emailLaunchUri.toString());
        },
        tooltip: "Contacta me",
        child: Icon(Icons.email),
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
                    Perfil(
                      aboutMe:
                          "Programador dedicado con experiencia en desarrollo de aplicaciones android y web",
                      topLinks: [
                        TextLinkModel(
                          icon: FontAwesomeIcons.artstation,
                          text: "Artstation",
                          launchURL: "https://www.artstation.com/sabowsla",
                          toolTip: "artstation.com/sabowsla",
                        ),
                        TextLinkModel(
                          icon: FontAwesomeIcons.github,
                          text: "Github",
                          launchURL: "https://github.com/sabowslau",
                          toolTip: "github.com/sabowslau",
                        ),
                        TextLinkModel(
                          icon: Icons.mail,
                          text: "Contacto",
                          launchURL: "",
                          toolTip: "jsabaye776@unab.edu.co",
                          onTap: sendGmail,
                        ),
                      ],
                    ),
                    Idioma(),
                    Habilidades(
                      filas: 3,
                      habilidades: [
                        HabilidadModel(
                          text: "Dart",
                          toolTip: "Proficiente en Dart",
                          urlIcon: "https://i.imgur.com/kM1nDEl.png",
                        ),
                        HabilidadModel(
                          text: "C#",
                          toolTip: "Proficiente en C#",
                          urlIcon: "https://i.imgur.com/JMggQYz.png",
                        ),
                        HabilidadModel(
                          toolTip: "Conocimientos en control de la version",
                          text: "Git",
                          urlIcon: "https://i.imgur.com/GaneVdo.png",
                        ),
                        HabilidadModel(
                          text: "Flutter",
                          toolTip: "Flutter",
                          urlIcon: "https://i.imgur.com/jqWKfwO.png",
                        ),
                        HabilidadModel(
                          toolTip: "Experiencia de trabajo usando Unity 3D",
                          text: "Unity",
                          urlIcon: "https://i.imgur.com/Ktp57Xt.png",
                        ),
                      ],
                    ),
                    Experiencia(
                      textLinks: [
                        TextLinkModel(
                          text: """- Sabowsla Games (Bucaramanga, CO)""",
                          launchURL: "www.sabowsla.com",
                          toolTip:
                              "Trabajé como diseñador generalista y programador para la creacion de juegos 3D",
                        ),
                        TextLinkModel(
                          text: "- Proyecto Personal",
                          launchURL:
                              "https://sabowslau.github.io/Analisis-Pinch/#/",
                          toolTip:
                              "Aplicacion para calculo de analisis de sistemas de transferencia de calor",
                        ),
                        TextLinkModel(
                          text: """- Proyecto Personal""",
                          launchURL:
                              "https://sabowslau.github.io/Sashimetri/#/",
                          toolTip:
                              "Aplicacion para la creacion de figuras geometricas",
                        ),
                      ],
                    ),
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
