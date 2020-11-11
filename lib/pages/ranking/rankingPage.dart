import 'package:flutter/material.dart';

class RankingPage extends StatelessWidget {
  var funcionario = [
    "João",
    "Matheus",
    "Alberto",
    "Edinaldo",
    "Luis",
    "Adão",
    "Jose",
    "Jorge",
    "Alberto",
    "Benedito"
  ];
  var numero = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var pontos = [900, 800, 700, 600, 500, 450, 400, 300, 200, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ranking do mês",
          style: TextStyle(fontFamily: "permanent-marker", fontSize: 23),
        ),
      ),
      body: ListView.builder(
          itemCount: funcionario.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                trailing: Text("Pontos: ${pontos[index]}"),
                title: Text(funcionario[index]),
                leading: Text("${numero[index]}"),
              ),
            );
          }),
    );
  }
}
