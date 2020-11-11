import 'package:flutter/material.dart';

Widget customTextField(String campo, {bool isPassword, String validator}) {
  return TextFormField(
    validator: (value) {
      switch (validator) {
        case "usuario":
          if (value.length < 6) {
            return "usuário não pode ser menor que 6 caracteres";
          }

          break;
        case "senha":
          if (value.length < 6)
            return "senha não pode ser menor que 6 caracteres";
          break;
        default:
      }
    },
    obscureText: isPassword == true ? true : false,
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.grey[120],
      hintText: campo,
    ),
  );
}
