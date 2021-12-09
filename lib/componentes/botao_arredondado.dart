import 'package:flutter/material.dart';
import '../constantes.dart';

class BotaoArredondado extends StatelessWidget {
  BotaoArredondado({required this.icone, required this.aoPressionar});

  final IconData icone;
  final aoPressionar;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icone),
      elevation: 6.0,
      onPressed: aoPressionar,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF7E7E7E),
    );
  }
}
