import 'package:flutter/material.dart';
import 'package:imccalc/componentes/cartao_padrao.dart';
import 'package:imccalc/constantes.dart';
import 'package:imccalc/telas/tela_nome.dart';
import '../componentes/cartao_padrao.dart';
import '../constantes.dart';
import '../componentes/botao_inferior.dart';
import 'package:social_share/social_share.dart';

class TelaResultados extends StatelessWidget {
  String nome2;

  TelaResultados(
      {required this.resultadoIMC,
      required this.resultadoTexto,
      required this.interpretacao,
      required this.nome2});

  //propriedade para pegar informações externas
  final String resultadoIMC;
  final String resultadoTexto;
  final String interpretacao;

  compartilharPreco() {
    // final imcPrint = 24;
    SocialShare.shareOptions('Meu IMC');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC ",
            style: TextStyle(fontFamily: 'Fira Code')),
        actions: [
          IconButton(
            onPressed: compartilharPreco,
            icon: Icon(Icons.share),
          )
        ],
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
                  Text(nome2, style: kNomeTextStyle)
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
                  builder: (context) => TelaNome(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
