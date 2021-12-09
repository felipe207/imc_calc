import 'package:flutter/material.dart';
import '../constantes.dart';

class BotaoInferior extends StatelessWidget {
  BotaoInferior({required this.aoPressionar, required this.tituloBotao});
  final aoPressionar;
  final tituloBotao;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: aoPressionar,
      child: Container(
        child: Center(
          child: Text(
            tituloBotao,
            style: kBotaoGrandeTextStyle,
          ),
        ),
        color: kCorContainerInferior,
        margin: EdgeInsets.only(top: 5.0),
        width: double.infinity,
        height: kAlturaContainerInferior,
      ),
    );
  }
}
