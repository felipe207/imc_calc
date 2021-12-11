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

class TelaCompartilhar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
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
                  ))),
          Expanded(
              child: Container(
                  margin: EdgeInsets.all(15.0),
                  child: CartaoRedes(
                    cor: kCorCartaoRedes,
                    filhoCartaoRedes: ConteudoIcone(
                      icone: FontAwesomeIcons.instagram,
                      descricao: 'Instagram',
                    ),
                  ))),
          Expanded(
              child: Container(
                  margin: EdgeInsets.all(15.0),
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