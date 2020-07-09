import 'package:flutter/material.dart';
import 'package:mandatrampo/screens/homepage.dart';
import 'package:mandatrampo/widgets/text_field_manda_trampo.dart';
import 'menu_cadastro_page.dart';

class CadastroServico extends StatefulWidget {
  @override
  _CadastroServico createState() => _CadastroServico();
}

class _CadastroServico extends State<CadastroServico> {
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
                      'MandaTrampo ',
                      style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Theme.of(context).accentColor,
                      size: 18,
                    )
                  ],
                ),
                // Imagem com logo do mockup
                // Image.asset('images/logo.png'),
                SizedBox(
                  height: 30,
                ),
                // Texto com múltiplas formatações utilizando Span, cada RichText possui um texto e um conjunto de TextSpans permitindo múltiplas formatações
                RichText(
                  text: TextSpan(
                    text: 'Cadastro de ',
                    style: TextStyle(fontSize: 20),
                    children: [
                      TextSpan(
                        text: ' Serviço ',
                        style: TextStyle(color: Color(0xFF6c63fe)),
                      ),
                    ],
                  ),
                ),

                // Componente customizado conforme mockup
                TextFieldMandaTrampo(texto: 'Nome Estabelecimento'),
                TextFieldMandaTrampo(
                  texto: 'Endereço',
                  tipoTeclado: TextInputType.text,
                ),
                TextFieldMandaTrampo(
                  texto: 'Cidade',
                  tipoTeclado: TextInputType.text,
                ),
                TextFieldMandaTrampo(
                  texto: 'Telefone',
                  tipoTeclado: TextInputType.phone,
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        child: Text('VOLTAR'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MenuCadastro()));
                        },
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
                                  builder: (context) => HomePage()));
                        },
                        child: Text('Cadastrar'),
                      ),
                    ),
                  ],
                ),
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
