import 'package:flutter/material.dart';
import '../constantes.dart';

class ConteudoIcone2 extends StatelessWidget {
  ConteudoIcone2({required this.descricao});

  final String descricao;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 12.0,
        ),
        Text(
          descricao,
          style: kDescricaoTextStyle,
        )
      ],
    );
  }
}
