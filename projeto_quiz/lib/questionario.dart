import 'package:flutter/material.dart';
import 'package:projeto_quiz/questao.dart';
import 'package:projeto_quiz/resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> _perguntas;
  final void Function(int) responder;
  final int _contadorPerguntas;
  Questionario(this._perguntas, this.responder, this._contadorPerguntas);

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas =
        _perguntas[_contadorPerguntas]['resposta'];
    return Container(
        child: Column(
      children: [
        Questao(_perguntas[_contadorPerguntas]['pergunta']),
        ...respostas
            .map((e) => Resposta(() {
                  responder(e['nota']);
                }, e['texto']))
            .toList(),
      ],
    ));
  }
}
