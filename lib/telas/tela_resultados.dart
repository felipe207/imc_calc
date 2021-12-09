import 'package:flutter/material.dart';
import 'package:imccalc/componentes/cartao_padrao.dart';
import 'package:imccalc/constantes.dart';
import 'package:imccalc/telas/tela_principal.dart';
import '../componentes/cartao_padrao.dart';
import '../constantes.dart';
import '../componentes/botao_inferior.dart';
import '../calculadora_imc.dart';

class TelaResultados extends StatelessWidget {
  TelaResultados(
      {required this.resultadoIMC,
      required this.resultadoTexto,
      required this.interpretacao});
  //propriedade para pegar informações externas
  final String resultadoIMC;
  final String resultadoTexto;
  final String interpretacao;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('CALCULADORA IMC', style: TextStyle(fontFamily: 'Fira Code')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            margin: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Resultado',
              style: kTituloTextStyle,
            ),
          )),
          Expanded(
            flex: 5,
            child: CartaoPadrao(
              cor: kCorAtivaCartaoPadrao,
              filhoCartao: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultadoTexto.toUpperCase().padLeft(5),
                      style: kResultadoTextStyle),
                  Text(resultadoIMC, style: kIMCTextStyle),
                  Text(interpretacao, style: kCorpoTextStyle),
                ],
              ),
            ),
          ),
          BotaoInferior(
            tituloBotao: 'RECALCULAR',
            aoPressionar: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TelaPrincipal(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
