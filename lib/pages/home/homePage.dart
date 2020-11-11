import 'package:flutter/material.dart';
import 'package:projeto4/pages/cursos/cursosPage.dart';
import 'package:projeto4/pages/inicial/inicialPage.dart';
import 'package:projeto4/pages/institucional/institucionalPage.dart';

import 'package:projeto4/widgets/customDrawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var services = ["Lançar informações", "Dashboard", "Opção 3", "Opção 4"];
    // var images = [
    //   "assets/lancamento.png",
    //   "assets/dashboard.png",
    //   "assets/dashboard.png",
    //   "assets/dashboard.png",
    // ];
    return DefaultTabController(
      length: 3,
      child: MaterialApp(
        home: Scaffold(
          drawer: customDrawer(context),
          appBar: AppBar(
            bottom: TabBar(
              labelColor: Colors.white,
              onTap: (index) {
                // Tab index when user select it, it start from zero
              },
              tabs: [
                Tab(
                  child: Text(
                    "Home",
                    style:
                        TextStyle(fontFamily: "permanent-marker", fontSize: 20),
                  ),
                ),
                Tab(
                  child: Text(
                    "Cursos",
                    style:
                        TextStyle(fontFamily: "permanent-marker", fontSize: 20),
                  ),
                ),
                Tab(
                  child: Text(
                    "Institucional",
                    style:
                        TextStyle(fontFamily: "permanent-marker", fontSize: 15),
                  ),
                ),
              ],
            ),
            title: Row(
              children: [
                Text("inova",
                    style: TextStyle(
                        color: Colors.blue[100],
                        fontFamily: "permanent-marker",
                        fontSize: 28)),
                Text(
                  "CO",
                  style: TextStyle(
                      color: Colors.lightGreen,
                      fontWeight: FontWeight.bold,
                      fontFamily: "permanent-marker",
                      fontSize: 25),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              InicialPage(),
              CursosPage(),
              InstitucionalPage(),
            ],
          ),
        ),
      ),
    );
  }
}

CustomListTile(String texto, IconData icon, String pagina, BuildContext context,
    {String screen}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
    child: Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
      child: InkWell(
        splashColor: Colors.lightGreen,
        onTap: () {
          Navigator.of(context).pushNamed(screen);
        },
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(children: <Widget>[
                Icon(
                  icon,
                  color: Theme.of(context).primaryColor,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(texto, style: TextStyle(fontSize: 15.0)),
                ),
              ]),
              Icon(Icons.arrow_right),
            ],
          ),
        ),
      ),
    ),
  );
}
