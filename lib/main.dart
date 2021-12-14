import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:imccalc/telas/tela_nome.dart';
//import 'package:imccalc/telas/splash_screen.dart';
import 'telas/tela_principal.dart';
//import 'package:flutter/services.dart';

void main() => runApp(CalculadoraIMC());

class CalculadoraIMC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF616161),
          scaffoldBackgroundColor: Color(0xFF616161),
        ),
        home: AnimatedSplashScreen(
            splash: Icons.calculate_rounded,
            duration: 3000,
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Color(0xFFFF5822),
            // nextScreen: TelaPrincipal()),
            nextScreen: Nome()));
  }
}
