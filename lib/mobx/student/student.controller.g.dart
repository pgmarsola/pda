// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StudentController on _StudentControllerBase, Store {
  late final _$studentAtom =
      Atom(name: '_StudentControllerBase.student', context: context);

  @override
  Student? get student {
    _$studentAtom.reportRead();
    return super.student;
  }

  @override
  set student(Student? value) {
    _$studentAtom.reportWrite(value, super.student, () {
      super.student = value;
    });
  }

  late final _$studentsAtom =
      Atom(name: '_StudentControllerBase.students', context: context);

  @override
  ObservableList<Student>? get students {
    _$studentsAtom.reportRead();
    return super.students;
  }

  @override
  set students(ObservableList<Student>? value) {
    _$studentsAtom.reportWrite(value, super.students, () {
      super.students = value;
    });
  }

  late final _$loadAtom =
      Atom(name: '_StudentControllerBase.load', context: context);

  @override
  bool get load {
    _$loadAtom.reportRead();
    return super.load;
  }

  @override
  set load(bool value) {
    _$loadAtom.reportWrite(value, super.load, () {
      super.load = value;
    });
  }

  late final _$loadStudentsAsyncAction =
      AsyncAction('_StudentControllerBase.loadStudents', context: context);

  @override
  Future loadStudents() {
    return _$loadStudentsAsyncAction.run(() => super.loadStudents());
  }

  @override
  String toString() {
    return '''
student: ${student},
students: ${students},
load: ${load}
    ''';
  }
}
