import 'package:flutter/material.dart';


/**
 * Rôle : Définit un widget de bouton personnalisé pour l'application.
Traduction : Mon bouton.
 */


class MyButton extends StatelessWidget {
  final void Function()? onTap; // Fonction qui sera exécutée lorsque le bouton est pressé et peut etre nullable.
  final String text; // Texte affiché à l'intérieur du bouton.

  const MyButton({
    super.key,
    required this.onTap, // La fonction onTap est obligatoire (peut être null pour un bouton désactivé).
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector( // Détecte les interactions de l'utilisateur (toucher, glisser, etc.).
      onTap: onTap, // Action à effectuer lorsqu'on appuie sur le bouton.
      child: Container(
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.tertiary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
