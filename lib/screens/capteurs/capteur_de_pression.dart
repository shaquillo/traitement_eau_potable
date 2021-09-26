import 'package:flutter/material.dart';
import 'package:traitement_eau_potable/components/pageNoScroll.dart';

class CapteurDePression extends StatelessWidget {
  static String routeName = 'Capteurs de pression';

  List<String> content = [
    'Capt1',
    'Capt2',
    'Pression 1',
    'Pression 2',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text(
          "Capteurs de pression",
          style: TextStyle(fontSize: 22),
        ),
      )),
      body: PageNoScroll(
        content: content,
        button_height: 100,
        button_width: MediaQuery.of(context).size.width * 0.8,
      ),
    );
  }
}
