import 'package:flutter/material.dart';
import 'package:projeto_quiz/questionario.dart';
import 'package:projeto_quiz/resultado.dart';

main() {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  final List<Map<String, Object>> _perguntas = const [
    {
      'pergunta': 'Qual o melhor filme do Michael Cera',
      'resposta': [
        {'texto': 'Juno', 'nota': 10},
        {'texto': 'Scott Pilgrim contra o Mundo', 'nota': 05},
        {'texto': 'Super Bad', 'nota': 03},
        {'texto': 'A Grande Jogada', 'nota': 1},
      ],
    },
    {
      'pergunta': 'Quem melhor interpretou o Batman?',
      'resposta': [
        {'texto': 'Ben Affleck', 'nota': 10},
        {'texto': 'George Clooney', 'nota': 3},
        {'texto': 'Christian Bale', 'nota': 01},
        {'texto': 'Michael Keaton', 'nota': 5},
      ],
    },
    {
      'pergunta': 'Qual o melhor filme?',
      'resposta': [
        {'texto': 'Sharknado', 'nota': 03},
        {'texto': 'Pneu Assassino', 'nota': 03},
        {'texto': 'Pulp Fiction', 'nota': 10},
        {'texto': 'Star Wars IX', 'nota': 5},
      ],
    },
    {
      'pergunta': 'Qual o melhor filme de heroi?',
      'resposta': [
        {'texto': 'Batman vs Superman', 'nota': 10},
        {'texto': 'Captão America: O primeiro vingador.', 'nota': 3},
        {'texto': 'Vingadores: Ultimato', 'nota': 05},
        {'texto': 'Pulp Fiction', 'nota': 01},
      ],
    },
    {
      'pergunta': 'Qual o melhor filme do Adam Sandler?',
      'resposta': [
        {'texto': 'Um maluco no Golf', 'nota': 3},
        {'texto': 'Zohan - O agente bom de corte', 'nota': 10},
        {'texto': 'Little Nick', 'nota': 01},
        {'texto': 'Cada um tem a gêmea que merece.', 'nota': 5},
      ],
    },
    {
      'pergunta': 'Qual desses filmes é o mais exagerado?',
      'resposta': [
        {'texto': 'Resident Evil 5: Retribuição', 'nota': 5},
        {'texto': 'Velozes e Furiosos 8', 'nota': 3},
        {'texto': 'O Procurado', 'nota': 10},
        {'texto': 'Pulp Fiction', 'nota': 01},
      ],
    },
    {
      'pergunta':
          'Em uma escala de Michael Cera, onde 1 é bom e 5 é pior, quantos Michael Ceras você dá para Pulp Fiction?',
      'resposta': [
        {'texto': '5', 'nota': 05},
        {'texto': 'Cinco', 'nota': 3},
        {'texto': 'Five', 'nota': 01},
        {'texto': 'Posso dar mais que 5?', 'nota': 10},
      ],
    }
  ];
  int _contadorPerguntas = 0;
  int _notaTotal = 0;
  void responder(int ponto) {
    setState(() {
      _contadorPerguntas++;
      _notaTotal += ponto;
      print(_notaTotal);
    });
  }

  void reiniciarQuiz() {
    setState(() {
      _contadorPerguntas = 0;
      _notaTotal = 0;
    });
  }

  bool get temPergunta {
    return _contadorPerguntas < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Quiz App'),
      ),
      body: temPergunta
          ? Questionario(_perguntas, responder, _contadorPerguntas)
          : Resultado(reiniciarQuiz, _notaTotal),
    ));
  }
}
