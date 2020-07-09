import 'package:flutter/material.dart';

class TextFieldMandaTrampo extends StatelessWidget {
  final String texto;
  final TextInputType tipoTeclado;
  final bool isPassword;
  final TextEditingController controller;

  const TextFieldMandaTrampo(
      {this.texto, this.tipoTeclado, this.isPassword, this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: TextField(
        controller: controller,
        obscureText: isPassword ?? false,
        keyboardType: tipoTeclado ?? TextInputType.text,
        autofocus: false,
        decoration: InputDecoration(
          hintText: texto,
          hintStyle: TextStyle(
            color: Theme.of(context).textTheme.bodyText2.color,
          ),
        ),
      ),
    );
  }
}
