import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Idioma extends StatelessWidget {
  const Idioma({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizing) => Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Center(
                  child: Text(
                    "IDIOMAS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: sizing.isMobile ? 20 : 35,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.white,
                  height: sizing.isMobile ? 2 : 5,
                )
              ],
            ),
          ),
          IdiomaViewType(
            idioma: "Español",
            nivel: "Nativo",
            sizing: sizing,
          ),
          IdiomaViewType(
            idioma: "Ingles",
            nivel: "Conversacional",
            sizing: sizing,
          ),
        ],
      ),
    );
  }
}

class IdiomaViewType extends StatelessWidget {
  final SizingInformation sizing;
  final String idioma;
  final String nivel;

  const IdiomaViewType(
      {@required this.sizing, this.idioma, this.nivel, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              color: Colors.white,
              fontSize: sizing.isMobile ? 12 : 18,
            ),
            children: [
              TextSpan(
                text: "$idioma \n",
                style: TextStyle(
                  height: 0,
                  textBaseline: TextBaseline.ideographic,
                ),
              ),
              TextSpan(
                text: "($nivel)",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: sizing.isMobile ? 10 : 12,
                ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
