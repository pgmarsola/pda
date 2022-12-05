import 'package:pda/model/endereco.dart';
import 'package:sqflite/sqflite.dart';

import '../setting/db.setting.dart';
import 'db.service.dart';

class EnderecoService {
  final dbHelper = DBHelper();

  Future<List<Endereco>> all() async {
    try {
      final Database _db = await dbHelper.initDatabase();
      final List<Map<String, dynamic>> maps = await _db.query(TB_ENDERECO);
      var endereco = List.generate(maps.length, (i) {
        return Endereco(
          bairro: maps[i]['bairro'],
          cep: maps[i]['cep'],
          cidade: maps[i]['cidade'],
          endereco: maps[i]['endereco'],
          estado: maps[i]['estado'],
          numero: maps[i]['numero'],
        );
      });
      return endereco;
    } catch (e) {
      print(e);
      return <Endereco>[];
    }
  }

  Future create(Endereco model) async {
    final Database _db = await dbHelper.initDatabase();
    try {
      await _db.insert(TB_ENDERECO, model.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace);
      print("endereco criado com sucesso!");
    } catch (e) {
      print("Erro ao criar endereco: $e");
      return;
    }
  }

  Future<int> delete() async {
    final Database _db = await dbHelper.initDatabase();
    return await _db.delete(TB_ENDERECO);
  }
}
