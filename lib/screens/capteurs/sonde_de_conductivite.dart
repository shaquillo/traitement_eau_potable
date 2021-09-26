import 'package:flutter/material.dart';
import 'package:traitement_eau_potable/components/pageNoScroll.dart';

class SondeDeConductivite extends StatelessWidget {
  static String routeName = 'Sonde de conductivité';

  List<String> content = ['Conduct1', 'Conduct2', 'Conduct3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Sonde de conductivité",
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
