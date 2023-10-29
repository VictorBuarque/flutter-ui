import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/splashscreen.dart';  
import 'package:flutter_ui/routes/app_routes.dart';
import 'package:flutter_ui/screens/checarservico.dart';
import 'package:flutter_ui/screens/homescreen.dart' as homescreen; 
import 'package:flutter_ui/screens/agendar.dart';


void main() {
  runApp(
    MaterialApp(
      initialRoute: AppRoutes.splashscreen, // Rota inicial para o splash screen
      routes: {
        AppRoutes.splashscreen: (context) => SplashScreen(),
        AppRoutes.homescreen: (context) => const homescreen.HomeScreen(),
        AppRoutes.agendar: (context) => Agendar(),
        AppRoutes.checarservico: (context) => ChecarServico(),
      },
    ),
  );
}

