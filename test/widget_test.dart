import 'package:flutter/material.dart';

class MetasPage extends StatelessWidget {
  var services = ["Lançar informações", "Dashboard", "Opção 3", "Opção 4"];
  var images = [
    "assets/lancamento.png",
    "assets/dashboard.png",
    "assets/dashboard.png",
    "assets/dashboard.png",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            CircleAvatar(
              maxRadius: 50,
              backgroundColor: Colors.deepPurple,
            ),
            Text("João da Silva"),
            SizedBox(height: 20),
            Card(
              elevation: 20,
              child: Container(
                color: Colors.grey[100],
                height: 100,
                width: 300,
                child: Column(
                  children: [
                    Text(
                      "Pontuação:",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                    Center(
                      child: Text(
                        "100",
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 33,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 20,
              child: Container(
                color: Colors.grey[100],
                height: 250,
                width: 300,
                child: Column(
                  children: [
                    Text(
                      "Cursos em andamento:",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                    ListTile(
                      title: Text("Curso XYZ"),
                    ),
                    ListTile(
                      title: Text("Curso XYZ"),
                    ),
                    ListTile(
                      title: Text("Curso XYZ"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
