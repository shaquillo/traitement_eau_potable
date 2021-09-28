import 'package:flutter/material.dart';
import 'package:traitement_eau_potable/components/pageScroll.dart';

class Flotteurs extends StatelessWidget {
  static String routeName = 'Flotteurs';

  List<String> content = [
    'Low_Float1A',
    'High_Float1A',
    'Low_Float2A',
    'High_Float2A',
    'Low_Float1.1',
    'Medium_Float1.1',
    'High_Float1.1',
    'Low_Float1.2',
    'Medium_Float1.2',
    'High_Float1.2',
    'Low_Float1',
    'Medium_Float1',
    'High_Float1',
    'Low_Float2',
    'Medium_Float2',
    'High_Float2'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Flotteurs",
          style: TextStyle(fontSize: 22),
        )),
      ),
      body: PageScroll(
        content: content,
        button_height: 100,
        button_width: MediaQuery.of(context).size.width * 0.8,
        mode_fonctionnement: true,
      ),
    );
  }
}
