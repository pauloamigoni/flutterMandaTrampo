import 'dart:convert' as json;
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:mandatrampo/models/parceiros_data.dart';

// Obter caminho do arquivo de persistencia
class FileUtils {
  static Future<File> getArquivo() async {
    final diretorio = await getApplicationDocumentsDirectory();
    return File("${diretorio.path}/arquivo.json");
  }

// Recupera o arquivo, lê e o converte em String em memória em JSON
  static Future<String> lerArquivo() async {
    try {
      final arquivo = await getArquivo();
      return arquivo.readAsString();
    } catch (e) {
      print('Erro ao ler arquivo: ${e.toString()}');
      return null;
    }
  }

  // Grava o arquivo no formato JSON
  static Future<File> salvarArquivo() async {
    final dados = json.jsonEncode(ParceiroData.listaParceiros);
    final arquivo = await getArquivo();
    return arquivo.writeAsString(dados);
  }
}
