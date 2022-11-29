class Student {
  String? nome;
  String? image;
  String? cpf;
  String? ra;
  String? dataNasc;
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
  String? situacao;
  int? semestre;
  String? unidade;

  Student({
    this.nome,
    this.image,
    this.cpf,
    this.ra,
    this.dataNasc,
    this.email,
    this.senha,
    this.cep,
    this.endereco,
    this.numero,
    this.bairro,
    this.cidade,
    this.estado,
    this.celular,
    this.curso,
    this.situacao,
    this.semestre,
    this.unidade,
  });

  Student.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    image = json['image'];
    cpf = json['cpf'];
    ra = json['ra'];
    dataNasc = json['dataNasc'];
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
    situacao = json['situacao'];
    semestre = json['semestre'];
    unidade = json['unidade'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['image'] = this.image;
    data['cpf'] = this.cpf;
    data['ra'] = this.ra;
    data['dataNasc'] = this.dataNasc;
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
    data['situacao'] = this.situacao;
    data['semestre'] = this.semestre;
    data['unidade'] = this.unidade;

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
      'senha': senha,
      'cep': cep,
      'endereco': endereco,
      'numero': numero,
      'bairro': bairro,
      'cidade': cidade,
      'estado': estado,
      'celular': celular,
      'curso': curso,
      'situacao': situacao,
      'semestre': semestre,
      'unidade': unidade,
    };
  }
}
