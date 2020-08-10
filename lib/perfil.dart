import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Perfil extends StatelessWidget {
  const Perfil({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Container(width: 120, height: 120, child: Image.asset("foto.png")),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jhonatan Sabayé",
                  style: TextStyle(fontSize: 45, color: Colors.white),
                  textAlign: TextAlign.start,
                ),
                InkWell(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2),
                        child: Icon(
                          FontAwesomeIcons.artstation,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Text("Arstation",
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                      ),
                    ],
                  ),
                  onTap: () {
                    launch("https://www.artstation.com/sabowsla");
                  },
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
