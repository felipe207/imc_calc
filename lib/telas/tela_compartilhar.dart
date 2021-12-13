import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../componentes/cartao_padrao.dart';
import '../componentes/conteudo_icone.dart';
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

class TelaCompartilhar extends StatelessWidget {
  compartilharPreco() {
    final imcPrint = 24;
    SocialShare.shareOptions('hgh');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Calculadora de IMC',
            style: TextStyle(fontFamily: 'Fira Code'),
          ),

          //a partit daqui começa o socil share
          actions: [
            IconButton(
              onPressed: compartilharPreco,
              icon: Icon(Icons.share),
            )
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 120.0, right: 120.0),
                      child: CartaoRedes(
                        cor: kCorCartaoRedes,
                        filhoCartaoRedes: ConteudoIcone(
                          icone: FontAwesomeIcons.whatsapp,
                          descricao: 'Whatsapp',
                        ),
                      ))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 120.0, right: 120.0),
                      child: CartaoRedes(
                        cor: kCorCartaoRedes,
                        filhoCartaoRedes: ConteudoIcone(
                          icone: FontAwesomeIcons.instagram,
                          descricao: 'Instagram',
                        ),
                      ))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 120.0, right: 120.0),
                      child: CartaoRedes(
                        cor: kCorCartaoRedes,
                        filhoCartaoRedes: ConteudoIcone(
                          icone: FontAwesomeIcons.facebook,
                          descricao: 'Facebook',
                        ),
                      ))),
            ],
          ),
        ));
  }
}
    
    
    /*
    
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
                margin: EdgeInsets.all(15.0),
                child: CartaoRedes(
                  cor: kCorCartaoRedes,
                  filhoCartaoRedes: ConteudoIcone(
                    icone: FontAwesomeIcons.whatsapp,
                    descricao: 'Whatsapp',
                  ),
                )),
          ),
          Expanded(
            child: Container(
                margin: EdgeInsets.all(15.0),
                child: CartaoRedes(
                  cor: kCorCartaoRedes,
                  filhoCartaoRedes: ConteudoIcone(
                    icone: FontAwesomeIcons.instagram,
                    descricao: 'Instagram',
                  ),
                )),
          ),
          Expanded(
            child: Container(
                margin: EdgeInsets.all(15.0),
                child: CartaoRedes(
                  cor: kCorCartaoRedes,
                  filhoCartaoRedes: ConteudoIcone(
                    icone: FontAwesomeIcons.facebook,
                    descricao: 'Facebook',
                  ),
                )),
          ),
        ],
      ),
    );
  }

*/







/*   Center(
            child: Scaffold(
              appBar: AppBar(
                title: const Text('Next page'),
              ),
              body: const Center(
                child: Text(
                  'This is the next page',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),*/