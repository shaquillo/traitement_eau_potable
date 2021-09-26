import 'package:flutter/material.dart';
import 'package:traitement_eau_potable/components/pageNoScroll.dart';

class Acceuil extends StatelessWidget {
  static String routeName = 'acceuil';

  List<String> content = ['Capteurs', 'Actionneurs'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        title: Center(
            child: Text(
          "STATION DE TRAITEMENT\nD'EAU POTABLE DU PORT\nAUTONOME DE KRIBI",
          textAlign: TextAlign.center,
        )),
      ),
      body: PageNoScroll(
        content: content,
        button_height: 100,
        button_width: MediaQuery.of(context).size.width * 0.8,
      ),
    );
  }
}
