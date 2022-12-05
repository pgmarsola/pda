import 'package:sqflite/sqflite.dart';

import '../../model/student.dart';
import '../setting/db.setting.dart';
import 'db.service.dart';

class StudentService {
  final dbHelper = DBHelper();

  Future<List<Student>> all() async {
    try {
      final Database _db = await dbHelper.initDatabase();
      final List<Map<String, dynamic>> maps = await _db.query(TB_STUDENT);
      var student = List.generate(maps.length, (i) {
        return Student(
          nome: maps[i]['nome'],
          image: maps[i]['image'],
          celular: maps[i]['celular'],
          cpf: maps[i]['cpf'],
          dataNasc: maps[i]['dataNasc'],
          email: maps[i]['email'],
          endereco: maps[i]['endereco'],
          ra: maps[i]['ra'],
          curso: maps[i]['curso'],
        );
      });
      return student;
    } catch (e) {
      print(e);
      return <Student>[];
    }
  }

  Future create(Student model) async {
    final Database _db = await dbHelper.initDatabase();
    try {
      await _db.insert(TB_STUDENT, model.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace);
      print("Estudante criado com sucesso!");
    } catch (e) {
      print("Erro ao criar estudante: $e");
      return;
    }
  }

  Future<int> delete() async {
    final Database _db = await dbHelper.initDatabase();
    return await _db.delete(TB_STUDENT);
  }
}
