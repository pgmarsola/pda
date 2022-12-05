class Endereco {
  String? cep;
  String? endereco;
  int? numero;
  String? bairro;
  String? cidade;
  String? estado;

  Endereco(
      {this.cep,
      this.endereco,
      this.numero,
      this.bairro,
      this.cidade,
      this.estado});

  Endereco.fromJson(Map<String, dynamic> json) {
    cep = json['cep'];
    endereco = json['endereco'];
    numero = json['numero'];
    bairro = json['bairro'];
    cidade = json['cidade'];
    estado = json['estado'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cep'] = this.cep;
    data['endereco'] = this.endereco;
    data['numero'] = this.numero;
    data['bairro'] = this.bairro;
    data['cidade'] = this.cidade;
    data['estado'] = this.estado;
    return data;
  }

  Map<String, dynamic> toMap() {
    return {
      'cep': cep,
      'endereco': endereco,
      'numero': numero,
      'bairro': bairro,
      'cidade': cidade,
      'estado': estado,
    };
  }
}
