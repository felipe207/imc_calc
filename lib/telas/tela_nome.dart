import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imccalc/telas/tela_principal.dart';
import '../componentes/cartao_padrao.dart';
import '../componentes/conteudo_icone.dart';
import '../componentes/conteudo_icone2.dart';
import '../constantes.dart';
import 'tela_resultados.dart';
import '../componentes/botao_inferior.dart';
import '../componentes/botao_arredondado.dart';
import '../calculadora_imc.dart';
import '../telas/tela_resultados.dart';
import '../componentes/cartao_redes.dart';

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'package:screenshot/screenshot.dart';
import 'package:social_share/social_share.dart';

class Nome extends StatelessWidget {
  TextEditingController txtnome = TextEditingController();
/*  void Salvar() {

    String nome;

    setState((){
      nome = txtnome.text;
    
  });

}*/

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: SizedBox(height: 30.0),
          ),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 120.0, right: 120.0),
                  child: CartaoRedes(
                    cor: kCorCartaoRedes,
                    filhoCartaoRedes: ConteudoIcone2(
                      descricao: 'Qual o seu nome?',
                    ),
                  ))),
          Expanded(
            child: TextField(
                controller: txtnome,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Fulano(a)',
                )),
          ),
          BotaoInferior(
            tituloBotao: 'ENVIAR',
            aoPressionar: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TelaPrincipal()),
              );
            },
          ),
          Expanded(
            child: SizedBox(height: 30.0),
          ),
        ],
      ),
    ));
  }
}
