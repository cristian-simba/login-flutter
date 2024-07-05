import 'package:flutter/material.dart';
import 'package:flutter_application_1/firstscreen.dart';
import 'package:flutter_application_1/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FormExampleApp(),
    );
  }
}
