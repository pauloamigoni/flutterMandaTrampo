import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ParceiroCard extends StatelessWidget {
  final double tamanhoIcone;
  final double tamanhoFonte;
  final String parceiro;
  final String endereco;
  final String cidade;
  final String telefone;

  const ParceiroCard(
      {Key key,
      this.tamanhoIcone,
      this.tamanhoFonte,
      this.parceiro,
      this.endereco,
      this.cidade,
      this.telefone});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          children: [
            Image.asset(
              'images/pizza.jpg',
              height: 150,
              width: 150,
              fit: BoxFit.fitHeight,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: Text(
                    parceiro,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 6, 8, 6),
                      child: Icon(
                        FontAwesomeIcons.mapMarker,
                        size: 20,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                    SizedBox(
                      width: 160,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          endereco,
                          style: TextStyle(fontSize: 12),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 6, 8, 6),
                      child: Icon(
                        FontAwesomeIcons.globe,
                        size: 20,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                    SizedBox(
                      width: 160,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          cidade,
                          style: TextStyle(fontSize: 12),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 6, 8, 6),
                      child: Icon(
                        FontAwesomeIcons.mobile,
                        size: 20,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                    SizedBox(
                      width: 160,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          telefone,
                          style: TextStyle(fontSize: 12),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
