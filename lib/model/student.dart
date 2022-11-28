class Student {
  String? nome;
  String? image;
  int? idade;
  String? cpf;
  String? ra;
  String? dataNasc;
  String? sexo;
  String? email;
  String? senha;
  String? cep;
  String? endereco;
  int? numero;
  String? bairro;
  String? cidade;
  String? estado;
  String? celular;
  int? curso;

  Student(
      {this.nome,
      this.image,
      this.idade,
      this.cpf,
      this.ra,
      this.dataNasc,
      this.sexo,
      this.email,
      this.senha,
      this.cep,
      this.endereco,
      this.numero,
      this.bairro,
      this.cidade,
      this.estado,
      this.celular,
      this.curso});

  Student.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    image = json['image'];
    idade = json['idade'];
    cpf = json['cpf'];
    ra = json['ra'];
    dataNasc = json['dataNasc'];
    sexo = json['sexo'];
    email = json['email'];
    senha = json['senha'];
    cep = json['cep'];
    endereco = json['endereco'];
    numero = json['numero'];
    bairro = json['bairro'];
    cidade = json['cidade'];
    estado = json['estado'];
    celular = json['celular'];
    curso = json['curso'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['image'] = this.image;
    data['idade'] = this.idade;
    data['cpf'] = this.cpf;
    data['ra'] = this.ra;
    data['dataNasc'] = this.dataNasc;
    data['sexo'] = this.sexo;
    data['email'] = this.email;
    data['senha'] = this.senha;
    data['cep'] = this.cep;
    data['endereco'] = this.endereco;
    data['numero'] = this.numero;
    data['bairro'] = this.bairro;
    data['cidade'] = this.cidade;
    data['estado'] = this.estado;
    data['celular'] = this.celular;
    data['curso'] = this.curso;
    return data;
  }

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'image': image,
      'idade': idade,
      'cpf': cpf,
      'ra': ra,
      'dataNasc': dataNasc,
      'sexo': sexo,
      'email': email,
      'senha': senha,
      'cep': cep,
      'endereco': endereco,
      'numero': numero,
      'bairro': bairro,
      'cidade': cidade,
      'estado': estado,
      'celular': celular,
      'curso': curso,
    };
  }
}
