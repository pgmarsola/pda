const String DATABASE_NAME = "pda.db";

const String TB_STUDENT = "student";
const String TB_ENDERECO = "endereco";
const String TB_CURSO = "curso";

const String CREATE_TABLE_STUDENT_SCRIPT =
    "CREATE TABLE student(id INTEGER PRIMARY KEY, nome TEXT, image TEXT, cpf TEXT, ra TEXT, dataNasc TEXT, email TEXT, senha TEXT, cep TEXT, endereco TEXT, numero INTEGER, bairro TEXT, cidade TEXT, estado TEXT, celular TEXT, curso INTEGER, situacao TEXT, semestre INTEGER, unidade TEXT)";

const String CREATE_TABLE_ENDERECO_SCRIPT =
    "CREATE TABLE endereco(id INTEGER PRIMARY KEY, cep TEXT, endereco TEXT, numero INTEGER, bairro TEXT, cidade TEXT, estado TEXT)";

const String CREATE_TABLE_CURSO_SCRIPT =
    "CREATE TABLE curso(id INTEGER PRIMARY KEY, code INTEGER, nomeCurso TEXT, situacao TEXT, semestre INTEGER, unidade TEXT)";
