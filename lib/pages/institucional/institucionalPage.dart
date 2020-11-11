import 'package:flutter/material.dart';

class InstitucionalPage extends StatelessWidget {
  var lembretes = [
    "Nesse mês quem conseguir o primeiro lugar irá ganhar uma viagem a Caldas Novas",
    "Festa da empresa dia 20/12 você e sua família estão convidados",
  ];
  var numero = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var pontos = [900, 800, 700, 600, 500, 450, 400, 300, 200, 100];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            "Lembretes",
            style: TextStyle(fontSize: 20, fontFamily: "permanent-marker"),
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
                itemCount: lembretes.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      title: Text(lembretes[index]),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
