import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mandatrampo/utils/file_utils.dart' show FileUtils;
import 'package:mandatrampo/widgets/parceiro_card.dart';

class Servicos extends StatefulWidget {
  @override
  _ServicosState createState() => _ServicosState();
}

class _ServicosState extends State<Servicos> {
  var listaParceiros = [];

/* Este método é chamado sempre que a tela for recriada, então os dados serão carregados
    e exibidos na lista...
*/

  @override
  void initState() {
    FileUtils.lerArquivo().then((value) {
      setState(() {
        listaParceiros = jsonDecode(value);
      });
    });
    super.initState();
  }

/* O Widget ListView possui um atributo builder que é um callback. Este caalback lè a lista
  de dados e preenche o widget responsável pela apresentacao de dados.
*/
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listaParceiros.length,
      itemBuilder: (context, index) {
        return ParceiroCard(
          parceiro: listaParceiros[index]['parceiro'] ?? 'Parceiro Especial',
          endereco: listaParceiros[index]['endereco'] ?? 'Não informado',
          cidade: listaParceiros[index]['cidade'] ?? 'Não informado',
          telefone: listaParceiros[index]['telefone'] ?? 'Não indormado',
        );
      },
    );
  }
}
