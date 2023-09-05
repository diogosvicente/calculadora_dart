import 'dart:convert';
import 'dart:io';

import 'package:meu_app/meu_app.dart' as meu_app;

void main(List<String> arguments) {
  print("Vem vindos a nossa calculadora!");
  print("Informe o primeiro número:");
  var line = stdin.readLineSync(encoding: utf8);
  var numero1 = double.parse(line ?? "0");

  print("Informe o segundo número:");
  line = stdin.readLineSync(encoding: utf8);
  var numero2 = double.parse(line ?? "0");

  print("Informe a operação matemática (+, -, *, /):");
  line = stdin.readLineSync(encoding: utf8);
  var operacao = line ?? "0";

  double resultado = 0;
  switch (operacao) {
    case "+":
      resultado = numero1 + numero2;
      break;
    case "-":
      resultado = numero1 - numero2;
      break;
    case "*":
      resultado = numero1 * numero2;
      break;
    case "/":
      resultado = numero1 / numero2;
      break;
    default:
      print("Operação inválida!");
      exit(0);
  }
  print("Operação solicitada: $operacao");
  print("O resultado da operação é: $resultado");
}
