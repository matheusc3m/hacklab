import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto4/pages/home/homePage.dart';
import 'package:projeto4/pages/lancamento/lancamentoMenuPage.dart';
import 'package:projeto4/pages/login/loginPage.dart';
import 'package:projeto4/pages/login/signupPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        buttonColor: Colors.green,
        brightness: Brightness.light,
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/home': (context) => HomePage(),
        '/home/lancamentos': (context) => LancamentoMenuPage(),
      },
    );
  }
}
