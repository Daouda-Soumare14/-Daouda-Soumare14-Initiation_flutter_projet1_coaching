import 'package:flutter/material.dart';


/**
 * Rôle : Définit un widget de champ de texte personnalisé, utilisé dans les formulaires de connexion ou d'inscription.
Traduction : Mon champ de texte.
 */


class MyTextField extends StatelessWidget {
  // Déclaration des propriétés finales (immuables après initialisation).
  final TextEditingController controller; // Contrôleur pour gérer le texte saisi dans le champ.
  final String hintText; 
  final bool obscureText; 


  const MyTextField({
    super.key,
    required this.controller, // Champ obligatoire pour le contrôleur.
    required this.hintText, 
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller, // Utilise le contrôleur passé au widget.
      obscureText: obscureText, // Définit si le texte est masqué ou non.
      decoration: InputDecoration( // Personnalise l'apparence du champ de texte.
        enabledBorder: OutlineInputBorder( // Bordure lorsque le champ est désactivé (non focalisé).
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.tertiary, // Couleur de la bordure désactivée.
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary, // Couleur de la bordure activée.
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Theme.of(context).colorScheme.primary,
        ),
        fillColor: Theme.of(context).colorScheme.secondary, // Couleur de fond du champ.
        filled: true, // Active la couleur de fond.
      ),
    );
  }
}
