import 'package:flutter/material.dart'; 
import 'login_page.dart';
import 'register_page.dart'; 


/**
 * Rôle : Une page qui alterne entre la page de connexion (login_page.dart) et la page d'inscription (register_page.dart).
Traduction : Page d'authentification.
 */


class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

// État associé à AuthPage, permettant de gérer le basculement entre les pages.
class _AuthPageState extends State<AuthPage> {
  // Variable pour déterminer quelle page afficher (true = LoginPage, false = RegisterPage).
  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage; // Change la valeur de showLoginPage.
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(
        // Passe une fonction à LoginPage, qui sera appelée pour basculer sur RegisterPage.
        togglePages: togglePages,
      );
    } else {
      return RegisterPage(
        togglePages: togglePages,
      );
    }
  }
}
