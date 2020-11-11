import 'package:flutter/material.dart';

class MetasPage extends StatelessWidget {
  var metas = [
    "Fazer tarefa x",
    "Fazer tarefa y",
    "Fazer tarefa z",
  ];
  var pontos = [20, 30, 40];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Suas metas esse mês",
          style: TextStyle(fontFamily: "permanent-marker", fontSize: 23),
        ),
      ),
      body: ListView.builder(
          itemCount: metas.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                title: Text(metas[index]),
                trailing: Text("Vale ${pontos[index]}pts"),
              ),
            );
          }),
    );
  }
}
