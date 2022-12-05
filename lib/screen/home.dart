import 'package:flutter/material.dart';
import 'package:pda/components/ibutton.dart';
import 'package:pda/components/studentcard.dart';
import 'package:pda/components/topbar.dart';
import 'package:pda/util/colors.dart';
import 'package:pda/util/responsive.dart';

import '../model/student.dart';

class Home extends StatefulWidget {
  final Student? student;
  const Home({super.key, this.student});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $n_light,
      appBar: TopBar(),
      body: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.all(responsive(context) * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // StudentCard(
            //   student: widget.student,
            //   complete: true,
            // ),
            SizedBox(
              height: responsive(context) * 2,
            ),
            IButton(
              title: "Meu curso",
              background: $b_basic1,
              titleColor: $n_white,
              icon: Icons.school,
              press: () {},
            ),
            SizedBox(
              height: responsive(context) * 2,
            ),
            IButton(
              title: "Financeiro",
              background: $p_green_dark,
              titleColor: $n_white,
              icon: Icons.attach_money_rounded,
              press: () {},
            ),
            SizedBox(
              height: responsive(context) * 2,
            ),
            IButton(
              title: "Secretaria digital",
              background: $p_orange_light,
              titleColor: $n_white,
              icon: Icons.desktop_mac_rounded,
              press: () {},
            )
          ],
        ),
      )),
    );
  }
}
