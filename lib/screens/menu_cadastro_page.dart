import 'package:flutter/material.dart';
import 'package:mandatrampo/screens/cadastro_servico.dart';

class MenuCadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //Alinhamento
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //Widgets adicionais aqui...
          //Texto simples
          Text(
            'ESCOLHA UMA DA OPÇÕES',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24),
          ),
          //Texto com configurações de margem dentro e um container
          Container(
            margin: EdgeInsets.only(left: 48, right: 48, top: 16),
            child: Text(
              'Não se preocupe, você poderá cadastrar os dois depois =)',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),
          ),
          SizedBox(
            height: 64,
          ),
          RaisedButton(
            //Configuração para cantos arredondados
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: Text('CADASTRAR CV'),
            onPressed: () {
              // Navegação a ser adicionada
            },
          ),
          SizedBox(
            height: 24,
          ),
          RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: Text('CADASTRAR SERVIÇO/NEGÓCIO'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CadastroServico()));
              // Navegação a ser adicionada
            },
          ),
        ],
      ),
    );
  }
}
