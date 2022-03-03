import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 2, 54, 96),
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Color.fromARGB(255, 2, 54, 96),
        ),
        body: DiceApp(),
      ),
    ),
  );
}

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  // Funcao para construir o gerador de dados
  void geradorDados() {
    setState(() {
      dadoEsquerdo = Random().nextInt(6) + 1;
      dadoDireito = Random().nextInt(6) + 1;
    });
  }

  int dadoEsquerdo = 1;
  int dadoDireito = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  onPressed: () {
                    geradorDados();
                  },
                  child: Image.asset('images/dice$dadoEsquerdo.png'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  onPressed: () {
                    geradorDados();
                  },
                  child: Image.asset('images/dice$dadoDireito.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
