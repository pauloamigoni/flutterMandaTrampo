import 'package:flutter/material.dart';
//import 'package:mandatrampo/screens/homepage.dart';
import 'package:mandatrampo/screens/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var borderRadius2 = BorderRadius.circular(10);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //Altera as cores dos componentes para o Tema Escuro
        brightness: Brightness.dark,
        accentColor: Color(0xFF746EFF),
        // Cor de fundo do Scaffold
        scaffoldBackgroundColor: Color(0xFF171717),
        // Configuração de estilo do texto por categoria
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Color(0xFF7D7B85)),
        ),
        // Cor padrão dos botões
        buttonTheme: ButtonThemeData(
          buttonColor: Color(0xFF746EFF),
        ),
        // Decoração das caixas de texto com bordas arredondadas
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF7D7B85),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF7D7B85),
            ),
            borderRadius: borderRadius2,
          ),
        ),
      ),
      home: LoginPage(),
    );
  }
}
