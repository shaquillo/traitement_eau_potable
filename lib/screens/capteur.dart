import 'package:flutter/material.dart';
import 'package:traitement_eau_potable/components/pageScroll.dart';

class Capteur extends StatelessWidget {
  static String routeName = 'Capteurs';

  List<String> content = [
    'Capteurs de pression',
    'Sonde de conductivité',
    'Sonde TH, pH',
    'Indicateur de résidus',
    'Flotteurs'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text(
          "Capteurs",
          style: TextStyle(fontSize: 22),
        ),
      )),
      body: PageScroll(
        content: content,
        button_height: 100,
        button_width: MediaQuery.of(context).size.width * 0.8,
      ),
    );
  }
}
