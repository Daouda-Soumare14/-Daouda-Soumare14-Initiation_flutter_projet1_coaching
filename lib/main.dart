import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projet1_review/app.dart';
import 'package:projet1_review/firebase_options.dart';

void main() async {
  // firebase setup
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  
  runApp(MyApp());
}
