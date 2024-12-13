import 'package:flutter/material.dart';


/**
 * Rôle : Définit un thème personnalisé pour l'application en mode clair (couleurs, style des boutons, etc.).
Traduction : Mode clair.
 */


ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade300,
    primary: Colors.grey.shade500,
    secondary: Colors.grey.shade200,
    tertiary: Colors.grey.shade100,
    inversePrimary: Colors.grey.shade900,
  ),
  scaffoldBackgroundColor: Colors.grey.shade300,
);
