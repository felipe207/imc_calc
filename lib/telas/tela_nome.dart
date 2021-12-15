import 'package:flutter/material.dart';
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
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            TextField(
              controller: txtnome,
              decoration: InputDecoration(
                labelText: 'nome',
              ),
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text(
                "salvar",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              color: Colors.blue,
              onPressed: Salvar,
            ),
          ],
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