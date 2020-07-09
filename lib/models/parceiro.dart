class Parceiro {
  String parceiro;
  String endereco;
  String cidade;
  String telefone;
  String url;
  String horario;
  String whatsApp;
  String instagram;
  String imagem;

  //Construtor com parametros opcionais
  Parceiro(
      {this.parceiro,
      this.imagem,
      this.endereco,
      this.cidade,
      this.telefone,
      this.url,
      this.horario,
      this.whatsApp,
      this.instagram});

  // Metodo para converter o objeto em Mapa para a conversão em JSON
  Map<String, dynamic> toMap() {
    var map = {
      'parceiro': parceiro,
      'endereco': endereco,
      'cidade': cidade,
      'telefone': telefone,
      'url': url,
      'horario': horario,
      'whatsApp': whatsApp,
      'instagram': instagram,
      'imagem': imagem
    };
    return map;
  }
}
