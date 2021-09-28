import 'package:flutter/material.dart';
import 'package:traitement_eau_potable/components/pageScroll.dart';

class Actionneur extends StatelessWidget {
  static String routeName = 'Actionneurs';

  List<String> content = [
    'Pump1_CaSO4',
    'Pump2_CaSO4',
    'Agitator_CaSO4',
    'Pump1_Ca(OH)2',
    'Pump2_Ca(OH)2',
    'Agitator_Ca(OH)2',
    'Air_blower1',
    'Air_blower2',
    'Lifting_Pump1',
    'Lifting_Pump2',
    'Trans_Pump1',
    'Trans_Pump2',
    'High_Press_pump',
    'Regulating_Pump',
    'Distrib_Pump1',
    'Distrib_Pump2',
    'Backwashing_Pump',
    'Antisludging_Pump',
    'InFilt_V1',
    'InFilt_V2',
    'Inlan_V1',
    'Inlan_V2',
    'OutFilt_V1',
    'Outlav_V1',
    'Outlav_V2',
    'RO_V',
    'Cleaning_RO_V'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Actionneurs",
          style: TextStyle(fontSize: 22),
        )),
      ),
      body: PageScroll(
        content: content,
        button_height: 100,
        button_width: MediaQuery.of(context).size.width * 0.8,
        mode_fonctionnement: true,
        show_mode: true,
      ),
    );
  }
}
