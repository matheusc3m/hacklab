import 'package:flutter/material.dart';
import 'package:projeto4/widgets/customTextFormField.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(height * 0.05),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 150,
                width: 150,
                child: Icon(
                  Icons.account_circle,
                  color: Theme.of(context).primaryColor,
                  size: 150,
                ),
              ),
              customTextField("Usuário", validator: "usuario"),
              SizedBox(
                height: height * 0.02,
              ),
              customTextField("Senha", isPassword: true, validator: "senha"),
              SizedBox(
                height: height * 0.02,
              ),
              MaterialButton(
                color: Theme.of(context).buttonColor,
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Navigator.pushNamed(context, "/home");
                  } else
                    Text("erro");
                },
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Não tem uma conta?   "),
                  InkWell(
                      child: new Text(
                        'Criar Conta',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, "/signup");
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
