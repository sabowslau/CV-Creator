import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mypersonal3dcv/perfil.dart';
import 'package:mypersonal3dcv/text_link_model.dart';
import 'package:url_launcher/url_launcher.dart';

import 'educacion.dart';
import 'experiencia.dart';
import 'habilidades.dart';
import 'idiomas.dart';

class CVType2 extends StatelessWidget {
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
                          "Diseñador generalista y editor de videos con énfasis en efectos especiales.",
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
                          text: "Blender",
                          toolTip: "Experencia en uso de Blender",
                          urlIcon: "https://i.imgur.com/ljcpRCG.png",
                        ),
                        HabilidadModel(
                          toolTip: "Experiencia En Diseño Parametrico",
                          text: "Solid Works",
                          urlIcon: "https://i.imgur.com/h0DTflz.png",
                        ),
                        HabilidadModel(
                          text: "Unity",
                          toolTip: "Experiencia con el entorno Unity",
                          urlIcon: "https://i.imgur.com/Ktp57Xt.png",
                        ),
                        HabilidadModel(
                          text: "Photoshop",
                          toolTip: "Experencia en uso de Photoshop",
                          urlIcon: "https://i.imgur.com/q6Ux7k6.png",
                        ),
                        HabilidadModel(
                          toolTip: "Experiencia En Edicion de Videos",
                          text: "Premiere Pro",
                          urlIcon: "https://i.imgur.com/LdlBIQs.png",
                        ),
                        HabilidadModel(
                          toolTip: "Conocimientos en Efectos Especiales",
                          text: "Affter Effects",
                          urlIcon: "https://i.imgur.com/1nt67de.png",
                        ),
                      ],
                    ),
                    Experiencia(
                      textLinks: [
                        TextLinkModel(
                          text: """- Sabowsla Games (Bucaramanga, CO)""",
                          launchURL: "www.sabowsla.com",
                          toolTip: "Trabajé como diseñador generalista",
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

sendGmail() async {
  final Uri _emailLaunchUri =
      Uri(scheme: 'mailto', path: 'jsabaye776@unab.edu.co', queryParameters: {
    'subject': 'Proceso⠀de⠀Contratacion',
    'body':
        'Hola⠀Jhonatan,⠀Estuvimos⠀viendo⠀tu⠀hoja⠀de⠀vida⠀y⠀nos⠀encantaria⠀tenerte⠀en⠀nuestro⠀equipo⠀de⠀trabajo...'
  });

  launch(_emailLaunchUri.toString());
}
