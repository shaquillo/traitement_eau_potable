import 'package:flutter/material.dart';
import 'package:traitement_eau_potable/screens/acceuil.dart';
import 'package:traitement_eau_potable/screens/actionneur.dart';
import 'package:traitement_eau_potable/screens/capteur.dart';
import 'package:traitement_eau_potable/screens/capteurs/capteur_de_pression.dart';
import 'package:traitement_eau_potable/screens/capteurs/flotteurs.dart';
import 'package:traitement_eau_potable/screens/capteurs/indicateur_de_residus.dart';
import 'package:traitement_eau_potable/screens/capteurs/sonde_de_conductivite.dart';
import 'package:traitement_eau_potable/screens/capteurs/sonde_th_ph.dart';
import 'package:traitement_eau_potable/screens/mode_de_fonctionnement.dart';

final Map<String, WidgetBuilder> routes = {
  Acceuil.routeName: (context) => Acceuil(),
  Actionneur.routeName: (context) => Actionneur(),
  Capteur.routeName: (context) => Capteur(),
  CapteurDePression.routeName: (context) => CapteurDePression(),
  Flotteurs.routeName: (context) => Flotteurs(),
  IndicateurDeResidus.routeName: (context) => IndicateurDeResidus(),
  SondeDeConductivite.routeName: (context) => SondeDeConductivite(),
  SondeThpH.routeName: (context) => SondeThpH(),
  ModeDeFonctionnement.routeName: (context) => ModeDeFonctionnement()
};
