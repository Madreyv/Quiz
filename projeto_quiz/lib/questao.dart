import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String _pergunta;

  Questao(this._pergunta);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        _pergunta,
        style: TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
