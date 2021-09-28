import 'package:flutter/material.dart';
import 'package:traitement_eau_potable/components/pageNoScroll.dart';

class SondeThpH extends StatelessWidget {
  static String routeName = 'Sonde TH, pH';

  List<String> content = ['TH', 'pH'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Sonde TH, pH",
          style: TextStyle(fontSize: 22),
        )),
      ),
      body: PageNoScroll(
        content: content,
        button_height: 100,
        button_width: MediaQuery.of(context).size.width * 0.8,
        mode_fonctionnement: true,
      ),
    );
  }
}
