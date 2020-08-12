import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mypersonal3dcv/seccion.dart';
import 'package:mypersonal3dcv/textlink.dart';

class Educacion extends StatefulWidget {
  const Educacion({Key key}) : super(key: key);

  @override
  _EducacionState createState() => _EducacionState();
}

class _EducacionState extends State<Educacion> {
  @override
  Widget build(BuildContext context) {
    return SeccionCV(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextLink(
            text: """ - Universidad Autonoma de Bucaramanga (Bucaramanga, CO)
        Ingenieria En Energia""",
            toolTip: "",
            onTap: () {},
            padding: EdgeInsets.only(bottom: 10),
          ),
        ],
      ),
      title: "EDUCACIÓN",
    );
  }

  getApplicationDocumentsDirectory() {}
}
