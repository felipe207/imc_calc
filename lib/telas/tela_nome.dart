import 'package:flutter/material.dart';
import 'package:imccalc/constantes.dart';
import 'package:imccalc/telas/tela_principal.dart';

class TelaNome extends StatefulWidget {
  @override
  _TelaNomeState createState() => _TelaNomeState();
}

class _TelaNomeState extends State<TelaNome> {
  TextEditingController txtnome = TextEditingController();

  void Salvar() {
    String nome;
    nome = txtnome.text.toUpperCase();
    if (nome != '') {
      setState(() {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => TelaPrincipal(nome: nome)));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: txtnome,
                decoration: InputDecoration(
                    labelText: 'Informe seu nome aqui!',
                    labelStyle: TextStyle(
                        color: Colors.white,
                        height: 0.5, // 0,1 - label will sit on top of border
                        fontFamily: 'Fira Code',
                        fontSize: 23.0),
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: kCorBotaoNome, width: 2))),
              ),
              // Expanded(
              SizedBox(height: 23.0),
              // ),
              // ignore: deprecated_member_use
              RaisedButton(
                child: Text(
                  "salvar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Fira Code',
                  ),
                ),
                color: kCorBotaoNome,
                onPressed: Salvar,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*

class TelaNome extends StatelessWidget {
  TextEditingController txtnome = TextEditingController();

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
*/