import 'package:flutter/material.dart';
import 'package:mandatrampo/widgets/text_field_manda_trampo.dart';
import 'package:mandatrampo/screens/menu_cadastro_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                // Texto e coração em mesma linha
                Row(
                  children: [
                    Text(
                      '\n ',
                      style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontWeight: FontWeight.w500),
                    ),
                    // Icon(
                    //   Icons.favorite,
                    //   color: Theme.of(context).accentColor,
                    //   size: 18,
                    // )
                  ],
                ),
                // Imagem com logo do mockup
                Image.asset('images/logo.png'),
                SizedBox(
                  height: 16,
                ),
                // Texto com múltiplas formatações utilizando Span, cada RichText possui um texto e um conjunto de TextSpans permitindo múltiplas formatações
                RichText(
                  text: TextSpan(
                    text: '\n Queremos te',
                    style: TextStyle(fontSize: 20),
                    children: [
                      TextSpan(
                        text: ' ajudar ',
                        style: TextStyle(color: Color(0xFF6c63fe)),
                        children: [
                          TextSpan(
                            text: ' a passar por tudo isso!',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Componente customizado conforme mockup
                TextFieldMandaTrampo(texto: 'Nome completo'),
                TextFieldMandaTrampo(
                  texto: 'E-mail',
                  tipoTeclado: TextInputType.emailAddress,
                ),
                TextFieldMandaTrampo(
                  texto: 'Senha',
                  isPassword: true,
                ),
                TextFieldMandaTrampo(
                  texto: 'Confirme a senha',
                  isPassword: true,
                ),
                // Espaço vertical
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Checkbox(
                      onChanged: (bool value) {},
                      value: false,
                    ),
                    Expanded(
                      child: Text(
                          'Eu concordo com os termos de serviço da mandatrampo.'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        child: Text('VOLTAR'),
                        onPressed: () {},
                        shape: Border.all(
                            width: 1, color: Theme.of(context).accentColor),
                      ),
                    ),
                    SizedBox(
                      width: 32,
                    ),
                    Expanded(
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MenuCadastro()));
                        },
                        child: Text('PRÓXIMO'),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text('Já tem uma conta? '),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Entrar',
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                      ),
                    )
                  ],
                ),

                //Espacamento vertical
                SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
