import 'package:mobx/mobx.dart';
import 'package:pda/helper/data/firestore.controller.dart';
import 'package:pda/helper/service/curso.service.dart';
import 'package:pda/helper/service/endereco.service.dart';
import 'package:pda/helper/service/student.service.dart';
import 'package:pda/model/curso.dart';
import 'package:pda/model/endereco.dart';

import '../../model/student.dart';

part 'student.controller.g.dart';

class StudentController = _StudentControllerBase with _$StudentController;
final StudentService? _studentService = StudentService();
final EnderecoService? _enderecoService = EnderecoService();
final CursoService? _cursoService = CursoService();

abstract class _StudentControllerBase with Store {
  _StudentControllerBase() {}

  @observable
  Student? student;

  @observable
  ObservableList<Student>? students;

  @observable
  ObservableList<Endereco>? enderecos;

  @observable
  ObservableList<Curso>? cursos;

  @observable
  bool load = false;

  @action
  loadStudent(String uid) async {
    load = true;

    var data = await FirestoreController.fetchStudent(uid);

    if (data!.nome != null) {
      await save(data);
      load = false;
    }

    load = false;
  }

  @action
  save(Student? contain) async {
    load = true;

    if (contain! != null) {
      await _studentService!.delete();
      await _cursoService!.delete();
      await _enderecoService!.delete();
      await _studentService!.create(Student(
        celular: contain.celular ?? " ",
        cpf: contain.cpf ?? " ",
        dataNasc: contain.dataNasc ?? " ",
        email: contain.email ?? " ",
        image: contain.image ?? " ",
        nome: contain.nome ?? " ",
        ra: contain.ra ?? " ",
      ));

      await _cursoService!.create(Curso(
          code: contain.curso!.code ?? 0,
          nomeCurso: contain.curso!.nomeCurso ?? " ",
          semestre: contain.curso!.semestre ?? 0,
          situacao: contain.curso!.situacao ?? " ",
          unidade: contain.curso!.unidade ?? " "));

      await _enderecoService!.create(Endereco(
        bairro: contain.endereco!.bairro ?? " ",
        cep: contain.endereco!.cep ?? " ",
        cidade: contain.endereco!.cidade ?? " ",
        endereco: contain.endereco!.endereco ?? " ",
        estado: contain.endereco!.estado ?? " ",
        numero: contain.endereco!.numero ?? 0,
      ));

      await getInfo();
      return student;
    }
    load = false;
  }

  @action
  getInfo() async {
    students = ObservableList<Student>.of(await _studentService!.all());
    enderecos = ObservableList<Endereco>.of(await _enderecoService!.all());
    cursos = ObservableList<Curso>.of(await _cursoService!.all());

    if (students!.isNotEmpty) {
      student = students![0];
      student!.curso = cursos![0];
      student!.endereco = enderecos![0];
    }
  }
}
