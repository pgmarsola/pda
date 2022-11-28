import 'package:mobx/mobx.dart';
import 'package:pda/helper/service/student.service.dart';

import '../../model/student.dart';
import '../student/student.controller.dart';

part 'auth.controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  final StudentController? _studentController = StudentController();
  final StudentService? _studentService = StudentService();

  _AuthControllerBase() {}

  @observable
  Student? student;

  @observable
  ObservableList<Student>? students;

  @observable
  bool load = false;

  @action
  login(
    String value,
    StudentController? controller,
  ) async {
    load = true;

    if (controller!.students!.isNotEmpty) {
      var data = controller.students!.where((element) => element.ra == value);
      if (data.isNotEmpty) {
        await save(data);
        if (student != null) {
          return student;
        }
      }
    }
    load = false;
  }

  @action
  save(Iterable<Student>? contain) async {
    load = true;

    if (contain!.isNotEmpty) {
      await _studentService!.delete();
      await _studentService!.create(Student(
        bairro: contain.first.bairro ?? " ",
        celular: contain.first.celular ?? " ",
        cep: contain.first.cep ?? " ",
        cidade: contain.first.cidade ?? " ",
        cpf: contain.first.cpf ?? " ",
        dataNasc: contain.first.dataNasc ?? " ",
        email: contain.first.email ?? " ",
        endereco: contain.first.endereco ?? " ",
        estado: contain.first.estado ?? " ",
        idade: contain.first.idade ?? 0,
        image: contain.first.image ?? " ",
        nome: contain.first.nome ?? " ",
        numero: contain.first.numero ?? 0,
        ra: contain.first.ra ?? " ",
        senha: contain.first.senha ?? " ",
        sexo: contain.first.sexo ?? " ",
        curso: contain.first.curso ?? 0,
      ));
      await getStudent();
    }
    load = false;
  }

  @action
  getStudent() async {
    students = ObservableList<Student>.of(await _studentService!.all());

    if (students!.isNotEmpty) {
      student = students![0];
    }
  }
}
