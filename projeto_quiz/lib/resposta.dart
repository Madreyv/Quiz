import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final void Function() responder;
  final String resposta;
  Resposta(this.responder, this.resposta);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: ElevatedButton(onPressed: responder, child: Text(resposta)),
    );
  }
}
