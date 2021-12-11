import 'package:flutter/material.dart';

class CartaoRedes extends StatelessWidget {
  CartaoRedes({required this.cor, this.filhoCartaoRedes, this.aoPressionar});
  //as chaves servem para especializar atributos como cor e não deixar padrão

  final Color cor;
  //final Widget filhoCartao;
  final filhoCartaoRedes;
  final aoPressionar;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: aoPressionar,
      child: Container(
        child: filhoCartaoRedes,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: cor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
