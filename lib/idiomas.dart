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
          Expanded(
            child: Center(
              child: Text(
                """Español
(Nativo)""",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: sizing.isMobile ? 15 : 22,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                """Ingles
(Conversacional)""",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: sizing.isMobile ? 15 : 22,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
