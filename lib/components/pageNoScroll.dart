import 'package:flutter/material.dart';
import 'package:traitement_eau_potable/screens/mode_de_fonctionnement.dart';

class PageNoScroll extends StatelessWidget {
  PageNoScroll(
      {this.content,
      this.button_width,
      this.button_height,
      this.mode_fonctionnement = false});

  final List<String> content;
  final double button_width;
  final double button_height;
  final bool mode_fonctionnement;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: content
            .map((e) => SizedBox(
                width: this.button_width,
                height: this.button_height,
                child: OutlinedButton(
                  onPressed: () {
                    if (this.mode_fonctionnement) {
                      Navigator.of(context).pushNamed(
                          ModeDeFonctionnement.routeName,
                          arguments: e);
                    } else {
                      Navigator.of(context).pushNamed(e);
                    }
                  },
                  child: Text(
                    e,
                    style: TextStyle(fontSize: 18),
                  ),
                )))
            .toList(),
      ),
    );
  }
}
