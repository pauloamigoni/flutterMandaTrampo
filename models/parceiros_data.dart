import 'package:mandatrampo/models/parceiro.dart';

class ParceiroData {
  static var listaParceiros = [
    Parceiro(
      parceiro: 'Nostra Pizza',
      imagem: 'pizza.jpg',
      endereco: 'Rua Araraquara, 500 - Jd S Joao - Araras/SP',
      telefone: '19983330406',
      url: 'https://www.facebook.com/nostrapizza',
      whatsApp: '19983339876',
      instagram: '@nostrapizza',
      horario: 'Seg-Dom: 06:00 as 21:00',
    ).toMap(),
    Parceiro(
      parceiro: 'Scudetto',
      imagem: 'pizza.jpg',
      endereco: 'Rua Tiradentes, 200 - Centro - Araras/SP',
      telefone: '19983330406',
      url: 'https://www.facebook.com/scudetto',
      whatsApp: '19983332345',
      instagram: '@scudetto',
      horario: 'Seg-Dom: 06:00 as 21:00',
    ).toMap(),
    Parceiro(
      parceiro: 'VegPizza',
      imagem: 'pizza.jpg',
      endereco: 'Rua Salamandra, 400 - Jd Green Ville - Limeira/SP',
      telefone: '19983338877',
      url: 'https://www.facebook.com/vegpizza',
      whatsApp: '19983336539',
      instagram: '@vegpizza',
      horario: 'Seg-Dom: 06:00 as 21:00',
    ).toMap(),
  ];
}
