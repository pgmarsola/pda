class Materias {
  String? key;
  String? nome;
  String? status;
  int? semestre;
  String? notaFinal;
  String? formato;
  String? sala;
  String? horario;
  int? diaSemana;

  Materias(
      {this.key,
      this.nome,
      this.status,
      this.semestre,
      this.notaFinal,
      this.formato,
      this.sala,
      this.horario,
      this.diaSemana});

  Materias.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    nome = json['nome'];
    status = json['status'];
    semestre = json['semestre'];
    notaFinal = json['notaFinal'];
    formato = json['formato'];
    sala = json['sala'];
    horario = json['horario'];
    diaSemana = json['diaSemana'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['nome'] = this.nome;
    data['status'] = this.status;
    data['semestre'] = this.semestre;
    data['notaFinal'] = this.notaFinal;
    data['formato'] = this.formato;
    data['sala'] = this.sala;
    data['horario'] = this.horario;
    data['diaSemana'] = this.diaSemana;
    return data;
  }

  Map<String, dynamic> toMap() {
    return {
      'key': key,
      'nome': nome,
      'status': status,
      'semestre': semestre,
      'notaFinal': notaFinal,
      'formato': formato,
      'sala': sala,
      'horario': horario,
      'diaSemana': diaSemana,
    };
  }
}