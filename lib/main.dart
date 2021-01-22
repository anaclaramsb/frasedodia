import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeStateful(),
  ));
}

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  var _frases = [
    "Tudo o que um sonho precisa para ser realizado é alguém que acredite que ele possa ser realizado.",
    "Imagine uma nova história para sua vida e acredite nela.",
    "A amizade desenvolve a felicidade e reduz o sofrimento, duplicando a nossa alegria e dividindo a nossa dor.",
    "Ser feliz sem motivo é a mais autêntica forma de felicidade.",
    "Não existe um caminho para a felicidade. A felicidade é o caminho.",
    "Não espere por uma crise para descobrir o que é importante em sua vida.",
    "Saber encontrar a alegria na alegria dos outros, é o segredo da felicidade.",
    "A alegria de fazer o bem é a única felicidade verdadeira.",
    "É bem difícil descobrir o que gera a felicidade; pobreza e riqueza falharam nisso.",
    "Perder tempo em aprender coisas que não interessam, priva-nos de descobrir coisas interessantes.",
  ];
  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  var _fraseGerada = "Clique no botão abaixo para gerar uma frase nova!";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.purple[900],
      ),
      body: Container(
          color: Colors.white,
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "images/frasedodia2.png",
              ),
              Text(
                "$_fraseGerada",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.normal,
                ),
              ),
              RaisedButton(
                onPressed: () {
                  _gerarFrase();
                },
                child: Text(
                  "Nova Frase",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                color: Colors.purple[900],
              ),
            ],
          )),
    );
  }
}
