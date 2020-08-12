import 'package:flutter/material.dart';

class Idioma extends StatelessWidget {
  const Idioma({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Center(
                child: Text(
                  "IDIOMAS",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                color: Colors.white,
                height: 5,
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
                fontSize: 22,
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
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
