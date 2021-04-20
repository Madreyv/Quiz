import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final void Function() reiniciar;
  final int nota;

  Resultado(this.reiniciar, this.nota);

  String mensagem() {
    if (nota < 8) {
      return "Seu gosto para filme é um cu sujo.";
    } else if (nota < 22) {
      return "Se mata, vc não tem salvação.";
    } else if (nota < 36) {
      return "Vc está no caminho. Continue assim pequeno garfanhoto!";
    } else {
      return "Vc tem o melhor gosto para fimes que já vi!!!!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text(mensagem(), style: TextStyle(fontSize: 20))),
        TextButton(
            onPressed: reiniciar,
            child: Text('Reiniciar?',
                style: TextStyle(
                  color: Colors.blue,
                )))
      ],
    );
  }
}
