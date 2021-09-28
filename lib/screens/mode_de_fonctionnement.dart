import 'package:flutter/material.dart';

import 'package:smart_dropdown/smart_dropdown.dart';
import 'package:traitement_eau_potable/constants.dart';
import 'package:traitement_eau_potable/model/mode.dart';

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
    final Mode args = ModalRoute.of(context).settings.arguments as Mode;

    items = [
      getItem(1, "Defaut"),
      getItem(2, "Active"),
    ];

    String mode_fonctionnement = DEFAUT;
    String status = ACTIVE;

    if (args.text == 'Pump1_CaSO4' ||
        args.text == 'Pump2_CaSO4' ||
        args.text == 'Agitator_CaSO4') {
      mode_fonctionnement = CaS04;
      if (args.text == 'Pump1_CaSO4') {
        status = Status_P1_CaS04;
      } else if (args.text == 'Pump2_CaSO4') {
        status = Status_P2_CaS04;
      } else if (args.text == 'Agitator_CaSO4') {
        status = Status_A_CaS04;
      }
    } else if (args.text == 'Pump1_Ca(OH)2' ||
        args.text == 'Pump2_Ca(OH)2' ||
        args.text == 'Agitator_Ca(OH)2') {
      mode_fonctionnement = CaOH2;
      if (args.text == 'Pump1_Ca(OH)2') {
        status = Status_P1_CaOH2;
      } else if (args.text == 'Pump2_Ca(OH)2') {
        status = Status_P2_CaOH2;
      } else if (args.text == 'Agitator_Ca(OH)2') {
        status = Status_A_CaOH2;
      }
    } else if (args.text == 'Air_blower1') {
      mode_fonctionnement = AirBlower1;
      status = Status_AirBlower1;
    } else if (args.text == 'Air_blower2') {
      mode_fonctionnement = AirBlower2;
      status = Status_AirBlower2;
    } else if (args.text == 'Lifting_Pump1' || args.text == 'Lifting_Pump2') {
      mode_fonctionnement = LiftingPump;
      if (args.text == 'Lifting_Pump1') {
        status = Status_LiftingPump1;
      } else if (args.text == 'Lifting_Pump2') {
        status = Status_LiftingPump2;
      }
    } else if (args.text == 'Trans_Pump1' || args.text == 'Trans_Pump2') {
      mode_fonctionnement = TransitionLiftPump;
      if (args.text == 'Trans_Pump1') {
        status = Status_TransitionLiftPump1;
      } else if (args.text == 'Trans_Pump2') {
        status = Status_TransitionLiftPump2;
      }
    } else if (args.text == 'InFilt_V1' ||
        args.text == 'InFilt_V2' ||
        args.text == 'OutFilt_V1') {
      mode_fonctionnement = InOutFiltr;
      if (args.text == 'InFilt_V1') {
        status = Status_InFiltrV1;
      } else if (args.text == 'InFilt_V2') {
        status = Status_InFiltrV2;
      } else if (args.text == 'OutFilt_V1') {
        status = Status_OutFiltrV1;
      }
    } else if (args.text == 'Inlan_V1' ||
        args.text == 'Inlan_V2' ||
        args.text == 'Outlav_V1' ||
        args.text == 'Outlav_V2') {
      mode_fonctionnement = InOutLav;
      if (args.text == 'Inlan_V1') {
        status = Status_InLavV1;
      } else if (args.text == 'Inlan_V2') {
        status = Status_InLavV2;
      } else if (args.text == 'Outlav_V1') {
        status = Status_OutLavV1;
      } else if (args.text == 'Outlav_V2') {
        status = Status_OutLavV2;
      }
    } else if (args.text == 'RO_V') {
      mode_fonctionnement = Rov;
      status = Status_Rov;
    } else if (args.text == 'Cleaning_RO_V') {
      mode_fonctionnement = CleaningRov;
      status = Status_CleaningRov;
    } else if (args.text == 'High_Press_pump') {
      mode_fonctionnement = HighPressurePump;
      status = Status_HighPressurePump;
    } else if (args.text == 'Regulating_Pump') {
      mode_fonctionnement = RegulatingPump;
      status = Status_RegulatingPump;
    } else if (args.text == 'Distrib_Pump1' || args.text == 'Distrib_Pump2') {
      mode_fonctionnement = DistribPump;
      if (args.text == 'Distrib_Pump1') {
        status = Status_DistribPump1;
      } else if (args.text == 'Distrib_Pump2') {
        status = Status_DistribPump2;
      }
    } else if (args.text == 'Backwashing_Pump') {
      mode_fonctionnement = BackwashingPump;
      status = Status_BackwashingPump;
    } else if (args.text == 'Antisludging_Pump') {
      mode_fonctionnement = AntisludgingPump;
      status = Status_AntisludgingPump;
    } else if (args.text == 'Capt1') {
      status = Capt1;
    } else if (args.text == 'Capt2') {
      status = Capt2;
    } else if (args.text == 'Pression 1') {
      status = Pression1;
    } else if (args.text == 'Pression 2') {
      status = Pression2;
    } else if (args.text == 'Ind_Carbone') {
      status = IndCarbone;
    } else if (args.text == 'Ind_Fe,Mn') {
      status = IndFeMn;
    } else if (args.text == 'Conduct1') {
      status = Conduct1;
    } else if (args.text == 'Conduct2') {
      status = Conduct2;
    } else if (args.text == 'Conduct3') {
      status = Conduct3;
    } else if (args.text == 'TH') {
      status = Th;
    } else if (args.text == 'pH') {
      status = Ph;
    } else if (args.text == 'Low_Float1A') {
      status = Low_Float1A;
    } else if (args.text == 'High_Float1A') {
      status = High_Float1A;
    } else if (args.text == 'Low_Float2A') {
      status = Low_Float2A;
    } else if (args.text == 'High_Float2A') {
      status = High_Float2A;
    } else if (args.text == 'Low_Float1.1') {
      status = Low_Float1_1;
    } else if (args.text == 'Medium_Float1.1') {
      status = Medium_Float1_1;
    } else if (args.text == 'High_Float1.1') {
      status = High_Float1_1;
    } else if (args.text == 'Low_Float1.2') {
      status = Low_Float1_2;
    } else if (args.text == 'Medium_Float1.2') {
      status = Medium_Float1_2;
    } else if (args.text == 'High_Float1.2') {
      status = High_Float1_2;
    } else if (args.text == 'Low_Float1') {
      status = Low_Float1;
    } else if (args.text == 'Medium_Float1') {
      status = Medium_Float1;
    } else if (args.text == 'High_Float1') {
      status = High_Float1;
    } else if (args.text == 'Low_Float2') {
      status = Low_Float2;
    } else if (args.text == 'Medium_Float2') {
      status = Medium_Float2;
    } else if (args.text == 'High_Float2') {
      status = High_Float2;
    }

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(args.text)),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Status:',
              style: TextStyle(
                  fontSize: 24,
                  color: secondaryColor,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 30,
                margin: EdgeInsets.only(left: 95, right: 100),
                child: Center(
                    child: Text(
                  status,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                )),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5))),
            SizedBox(
              height: 100,
            ),
            args.show_mode
                ? Text(
                    'Mode de Fonctionnement:',
                    style: TextStyle(
                        fontSize: 24,
                        color: secondaryColor,
                        fontWeight: FontWeight.bold),
                  )
                : Container(),
            args.show_mode
                ? SizedBox(
                    height: 20,
                  )
                : Container(),
            args.show_mode
                ? Container(
                    width: MediaQuery.of(context).size.width,
                    height: 30,
                    margin: EdgeInsets.only(left: 95, right: 100),
                    child: Center(
                        child: Text(
                      mode_fonctionnement,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    )),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(5)))
                : Container(),
            // child: SmartDropDown(
            //   items: items,
            //   borderRadius: 5,
            //   hintText: 'Defaut',
            //   onChanged: () {},
            // ),
          ],
        ),
      ),
    );
  }
}
