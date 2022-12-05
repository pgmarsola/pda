import 'package:flutter/material.dart';
import 'package:pda/components/infotitle.dart';
import 'package:pda/components/studentcard.dart';
import 'package:pda/components/topbar.dart';
import 'package:pda/model/student.dart';
import 'package:pda/util/colors.dart';

import '../util/responsive.dart';

class InfoStudent extends StatefulWidget {
  final Student? student;
  const InfoStudent({this.student, super.key});

  @override
  State<InfoStudent> createState() => _InfoStudentState();
}

class _InfoStudentState extends State<InfoStudent> {
  // String? endereco(Student? value) {
  //   var concatened = (value!.endereco.toString() +
  //       " ${value.numero}" +
  //       ", ${value.bairro}" +
  //       " - ${value.cidade}/${value.estado} - ${value.cep}");

  //   return concatened;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(),
      backgroundColor: $n_light,
      body: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.all(responsive(context) * 2),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    StudentCard(
                      complete: false,
                      student: widget.student,
                    ),
                    SizedBox(
                      height: responsive(context) * 2,
                    ),
                    Container(
                        padding: EdgeInsets.all(responsive(context) * 2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(responsive(context) * 1)),
                            color: $n_white),
                        alignment: Alignment.topCenter,
                        // ignore: sort_child_properties_last
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            InfoTitle(
                              title: "CPF:",
                              subtitle: widget.student!.cpf,
                            ),
                            SizedBox(
                              height: responsive(context) * 2,
                            ),
                            InfoTitle(
                              title: "Data de Nascimento:",
                              subtitle: widget.student!.dataNasc,
                            ),
                            SizedBox(
                              height: responsive(context) * 2,
                            ),
                            InfoTitle(
                              title: "E-mail:",
                              subtitle: widget.student!.email,
                            ),
                            Divider(height: responsive(context) * 4),
                            // InfoTitle(
                            //   title: "Endereço:",
                            //   subtitle: endereco(widget.student),
                            // ),
                            SizedBox(
                              height: responsive(context) * 2,
                            ),
                            InfoTitle(
                              title: "Telefone:",
                              subtitle: widget.student!.celular,
                            ),
                          ],
                        ))
                  ]))),
    );
  }
}
