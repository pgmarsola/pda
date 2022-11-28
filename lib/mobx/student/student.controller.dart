import 'package:mobx/mobx.dart';
import 'package:pda/mobx/student/student.repository.dart';

import '../../model/student.dart';

part 'student.controller.g.dart';

class StudentController = _StudentControllerBase with _$StudentController;

abstract class _StudentControllerBase with Store {
  StudentRepository? _studentRepository;

  _StudentControllerBase() {
    _studentRepository = StudentRepository();
  }

  @observable
  Student? student;

  @observable
  ObservableList<Student>? students;

  @observable
  bool load = false;

  @action
  loadStudents() async {
    load = true;

    students =
        ObservableList<Student>.of(await _studentRepository!.fetchStudents());

    if (students!.isNotEmpty) {
      load = false;
    }

    load = false;
  }
}
