import 'dart:math';

import 'package:flutter/material.dart';

class CalculadoraIMC {
  CalculadoraIMC({required this.altura, required this.peso});
  final int altura;
  final int peso;
  double _imc = 0;

  //para pegar variável de outro método é preciso
  //criar uma propriedade privada

  String calcularIMC() {
    //pow é um método de exponenciação
    double _imc = peso / pow(altura / 100, 2);
    print('IMC IGUAL A: ');
    print(_imc);

    // var imc2 = _imc.toStringAsFixed(1);
    //imc.toStringAsFixed(1);
    return _imc.toStringAsFixed(1);
  }

  String obterResultado() {
    double _imc = peso / pow(altura / 100, 2);
    if (_imc >= 25) {
      return 'Acima do peso';
    } else if (_imc >= 18.5) {
      return 'Normal';
    } else {
      return 'Abaixo do peso';
    }
  }

  String obterInterpretacao() {
    double _imc = peso / pow(altura / 100, 2);
    if (_imc >= 25) {
      return 'Você está com peso acima do normal. Tente se exercitar mais.';
    } else if (_imc >= 18.5) {
      return 'Excelente o seu peso está normal';
    } else {
      return 'Você está com peso abaixo do normal. Tente comer um pouco mais.';
    }
  }
}
