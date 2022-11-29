import 'package:flutter/material.dart';
import 'package:pda/helper/coded.dart';
import 'package:pda/model/student.dart';
import 'package:pda/screen/infostudent.dart';
import 'package:pda/util/colors.dart';

import '../util/navigator.dart';
import '../util/responsive.dart';

class StudentCard extends StatefulWidget {
  final Student? student;
  final bool? complete;
  const StudentCard({this.student, this.complete, super.key});

  @override
  State<StudentCard> createState() => _StudentCardState();
}

class _StudentCardState extends State<StudentCard> {
  @override
  Widget build(BuildContext context) {
    return widget.complete!
        ? InkWell(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(responsive(context) * 1),
                          topRight: Radius.circular(responsive(context) * 1)),
                      color: $p_orange_dark),
                  alignment: Alignment.center,
                  // ignore: sort_child_properties_last
                  child: Text(
                    codeDate(widget.student!.curso).toString(),
                    style: TextStyle(
                        color: $n_white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  padding: EdgeInsets.all(responsive(context) * 1.5),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(responsive(context) * 1),
                          bottomRight:
                              Radius.circular(responsive(context) * 1)),
                      color: $n_white),
                  alignment: Alignment.topCenter,
                  // ignore: sort_child_properties_last
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                  widget.student!.image.toString(),
                                ),
                                maxRadius: responsive(context) * 4,
                              )
                            ],
                          ),
                          Flexible(
                            // ignore: sort_child_properties_last
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  widget.student!.nome.toString(),
                                  style: TextStyle(
                                      color: $n_dark,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                const Divider(),
                                Text(
                                  "RA: ${widget.student!.ra.toString()}",
                                  style: TextStyle(
                                      color: $n_medium,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            fit: FlexFit.tight,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: responsive(context) * 2,
                            height: 2,
                            color: $p_orange_light,
                          ),
                          SizedBox(
                            width: responsive(context) * 0.6,
                          ),
                          Container(
                            width: responsive(context) * 10,
                            height: 2,
                            color: $p_orange_light,
                          ),
                          Icon(
                            Icons.arrow_right_alt_sharp,
                            color: $p_orange_light,
                          )
                        ],
                      )
                    ],
                  ),
                  padding: EdgeInsets.all(responsive(context) * 1.5),
                ),
              ],
            ),
            onTap: () {
              Nav.push(
                  context,
                  InfoStudent(
                    student: widget.student,
                  ));
            },
          )
        : Container(
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.circular(responsive(context) * 1)),
                color: $n_white),
            alignment: Alignment.topCenter,
            // ignore: sort_child_properties_last
            child: Row(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        widget.student!.image.toString(),
                      ),
                      maxRadius: responsive(context) * 4,
                    )
                  ],
                ),
                Flexible(
                  // ignore: sort_child_properties_last
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        widget.student!.nome.toString(),
                        style: TextStyle(
                            color: $n_dark,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      const Divider(),
                      Text(
                        "RA: ${widget.student!.ra.toString()}",
                        style: TextStyle(
                            color: $n_medium,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ],
                  ),
                  fit: FlexFit.tight,
                ),
              ],
            ),
            padding: EdgeInsets.all(responsive(context) * 1.5),
          );
  }
}
