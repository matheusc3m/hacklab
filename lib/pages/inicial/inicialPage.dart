import 'package:flutter/material.dart';
import 'package:projeto4/widgets/customCard.dart';

class InicialPage extends StatelessWidget {
  var services = ["Pontuação", "Ranking", "Metas"];
  var images = [
    "assets/dashboard.png",
    "assets/dashboard.png",
    "assets/dashboard.png",
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: services.length,
        gridDelegate: (SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 2),
        )),
        itemBuilder: (BuildContext context, int index) {
          return customCard(images, services, context, index, "principal", () {
            Navigator.of(context).pushNamed("/signup");
          });
        });
  }
}
