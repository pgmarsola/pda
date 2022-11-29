String? codeDate(value) {
  var curso = "";
  switch (value) {
    case 8401:
      curso = "Eng. Civil";
      break;
    case 7401:
      curso = "Eng. Controle e Automação";
      break;
  }
  return curso;
}

String? date(var value) {
  var retorno = codeDate(value);

  return retorno;
}
