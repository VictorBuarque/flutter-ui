import 'package:flutter/material.dart';
import 'package:flutter_ui/splashscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      home: SplashScreen()
    );
  }
}


