import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:pda/mobx/student/student.interface.dart';
import 'package:pda/model/student.dart';

class StudentRepository extends IStudentRepository {
  @override
  Future<List<Student>> fetchStudents() async {
    List<Student> list = [];

    final String response =
        await rootBundle.loadString("assets/json/data.json");
    final data = await json.decode(response);
    final students = data.map((i) => Student.fromJson(i)).toList();
    students.forEach((s) {
      list.add(s);
    });

    return list;
  }
}
