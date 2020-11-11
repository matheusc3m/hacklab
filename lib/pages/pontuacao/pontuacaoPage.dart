import 'package:flutter/material.dart';

class PontuacaoPage extends StatelessWidget {
  var services = ["Lançar informações", "Dashboard", "Opção 3", "Opção 4"];
  var images = [
    "assets/lancamento.png",
    "assets/dashboard.png",
    "assets/dashboard.png",
    "assets/dashboard.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pontuação",
          style: TextStyle(fontFamily: "permanent-marker", fontSize: 23),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                CircleAvatar(
                  maxRadius: 50,
                  backgroundImage: NetworkImage(
                      "https://br.web.img2.acsta.net/r_640_360/newsv7/19/10/25/17/05/3189133.png"),
                ),
                Text(
                  "Sebastião Kenobi",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "merienda"),
                ),
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
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontFamily: "merienda"),
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
        ),
      ),
    );
  }
}
