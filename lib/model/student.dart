import 'package:pda/model/curso.dart';
import 'package:pda/model/endereco.dart';

class Student {
  String? nome;
  String? image;
  String? cpf;
  String? ra;
  String? dataNasc;
  String? email;
  String? celular;
  Endereco? endereco;
  Curso? curso;

  Student(
      {this.nome,
      this.image,
      this.cpf,
      this.ra,
      this.dataNasc,
      this.email,
      this.celular,
      this.endereco,
      this.curso});

  Student.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    image = json['image'];
    cpf = json['cpf'];
    ra = json['ra'];
    dataNasc = json['dataNasc'];
    email = json['email'];
    celular = json['celular'];
    endereco = json['endereco'] != null
        ? new Endereco.fromJson(json['endereco'])
        : null;
    curso = json['curso'] != null ? new Curso.fromJson(json['curso']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['image'] = this.image;
    data['cpf'] = this.cpf;
    data['ra'] = this.ra;
    data['dataNasc'] = this.dataNasc;
    data['email'] = this.email;
    data['celular'] = this.celular;
    if (this.endereco != null) {
      data['endereco'] = this.endereco!.toJson();
    }
    if (this.curso != null) {
      data['curso'] = this.curso!.toJson();
    }
    return data;
  }

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'image': image,
      'cpf': cpf,
      'ra': ra,
      'dataNasc': dataNasc,
      'email': email,
      'celular': celular,
    };
  }
}
