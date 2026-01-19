import 'package:flutter/material.dart';
import 'package:prueba_flutter_19/pages/conversor_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 205, 216, 218),
        body: Center(
          
          child: ConversorApp(),
        ),
      ),
    );
  }
}
