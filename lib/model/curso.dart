class Curso {
  int? code;
  String? nomeCurso;
  String? situacao;
  int? semestre;
  String? unidade;

  Curso(
      {this.code, this.nomeCurso, this.situacao, this.semestre, this.unidade});

  Curso.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    nomeCurso = json['nomeCurso'];
    situacao = json['situacao'];
    semestre = json['semestre'];
    unidade = json['unidade'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['nomeCurso'] = this.nomeCurso;
    data['situacao'] = this.situacao;
    data['semestre'] = this.semestre;
    data['unidade'] = this.unidade;
    return data;
  }

  Map<String, dynamic> toMap() {
    return {
      'code': code,
      'nomeCurso': nomeCurso,
      'situacao': situacao,
      'semestre': semestre,
      'unidade': unidade,
    };
  }
}
