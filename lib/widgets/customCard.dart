import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:projeto4/pages/login/loginPage.dart';
import 'package:projeto4/pages/metas/metasPage.dart';
import 'package:projeto4/pages/pontuacao/pontuacaoPage.dart';
import 'package:projeto4/pages/ranking/rankingPage.dart';

Widget customCard(List<String> images, List<String> texts, BuildContext context,
    int index, String tipo, Function() func) {
  return Card(
    semanticContainer: true,
    child: InkWell(
      onTap: () {
        if (tipo == "principal") {
          if (index == 0) {
            Get.to(PontuacaoPage());
          } else if (index == 1) {
            Get.to(RankingPage());
          } else if (index == 2) {
            Get.to(MetasPage());
          }
        }
      },
      child: Stack(
        children: <Widget>[
          Positioned(
            top: MediaQuery.of(context).size.height * 0.01,
            left: MediaQuery.of(context).size.height * 0.01,
            child: Image.asset(
              images[index],
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height * 0.22,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.01,
            left: MediaQuery.of(context).size.height * 0.03,
            child: Text(
              texts[index],
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.021,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ),
  );
}
