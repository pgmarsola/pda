import 'package:pda/model/curso.dart';
import 'package:sqflite/sqflite.dart';

import '../../model/student.dart';
import '../setting/db.setting.dart';
import 'db.service.dart';

class CursoService {
  final dbHelper = DBHelper();

  Future<List<Curso>> all() async {
    try {
      final Database _db = await dbHelper.initDatabase();
      final List<Map<String, dynamic>> maps = await _db.query(TB_CURSO);
      var curso = List.generate(maps.length, (i) {
        return Curso(
          code: maps[i]['code'],
          nomeCurso: maps[i]['nomeCurso'],
          situacao: maps[i]['situacao'],
          semestre: maps[i]['semestre'],
          unidade: maps[i]['unidade'],
        );
      });
      return curso;
    } catch (e) {
      print(e);
      return <Curso>[];
    }
  }

  Future create(Curso model) async {
    final Database _db = await dbHelper.initDatabase();
    try {
      await _db.insert(TB_CURSO, model.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace);
      print("curso criado com sucesso!");
    } catch (e) {
      print("Erro ao criar curso: $e");
      return;
    }
  }

  Future<int> delete() async {
    final Database _db = await dbHelper.initDatabase();
    return await _db.delete(TB_CURSO);
  }
}
