import 'package:flutter/material.dart';

import 'package:smart_dropdown/smart_dropdown.dart';
import 'package:traitement_eau_potable/constants.dart';

String dropdownValue = 'default';

class ModeDeFonctionnement extends StatelessWidget {
  static String routeName = 'mode de fonctionnement';

  List<SmartDropdownMenuItem> items;
  SmartDropdownMenuItem getItem(dynamic value, String item) {
    return SmartDropdownMenuItem(
        value: value,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(item),
        ));
  }

  @override
  Widget build(BuildContext context) {
    final String title = ModalRoute.of(context).settings.arguments as String;

    items = [
      getItem(1, "Defaut"),
      getItem(2, "Autre"),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(title)),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Text(
              'Mode de Fonctionnement:',
              style: TextStyle(
                  fontSize: 24,
                  color: secondaryColor,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 95, right: 100),
              child: SmartDropDown(
                items: items,
                borderRadius: 5,
                hintText: 'Defaut',
                onChanged: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
