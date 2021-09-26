import 'package:flutter/material.dart';
import 'package:traitement_eau_potable/components/pageNoScroll.dart';

class IndicateurDeResidus extends StatelessWidget {
  static String routeName = 'Indicateur de résidus';

  List<String> content = ['Ind_Carbone', 'Ind_Fe,Mn'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Indicateur de résidus",
          style: TextStyle(fontSize: 22),
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
