import 'package:flutter/material.dart';
import 'package:traitement_eau_potable/constants.dart';
import 'package:traitement_eau_potable/model/mode.dart';
import 'package:traitement_eau_potable/screens/mode_de_fonctionnement.dart';

class PageScroll extends StatelessWidget {
  PageScroll(
      {this.content,
      this.button_width,
      this.button_height,
      this.mode_fonctionnement = false,
      this.show_mode = false});

  final bool show_mode;

  final List<String> content;
  final double button_width;
  final double button_height;
  final bool mode_fonctionnement;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                children: content
                    .map((e) => Column(children: [
                          SizedBox(
                              width: this.button_width,
                              height: this.button_height,
                              child: OutlinedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        secondaryColor)),
                                onPressed: () {
                                  if (this.mode_fonctionnement) {
                                    Navigator.of(context).pushNamed(
                                        ModeDeFonctionnement.routeName,
                                        arguments: Mode(e, this.show_mode));
                                  } else {
                                    Navigator.of(context).pushNamed(e);
                                  }
                                },
                                child: Text(e,
                                    style: TextStyle(
                                        fontSize: 18, color: textColor)),
                              )),
                          SizedBox(
                            height: 50,
                          )
                        ]))
                    .toList(),
              )),
        ));
  }
}
