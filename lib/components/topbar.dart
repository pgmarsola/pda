import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pda/util/colors.dart';

import '../util/responsive.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  TopBar();

  Size get preferredSize {
    return new Size.fromHeight(50.0);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: $n_white,
      centerTitle: true,
      title: Row(
        children: [
          Text(
            "PDA",
            style: TextStyle(
                color: $p_orange_dark,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: responsive(context) * 1,
          ),
          Text(
            "Portal do Aluno",
            style: TextStyle(
                color: $p_orange_dark,
                fontSize: 12,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
      iconTheme: IconThemeData(color: $p_orange_dark),
      actions: [
        TextButton.icon(
            onPressed: () {
              exit(0);
            },
            icon: Icon(
              Icons.exit_to_app,
              color: $n_medium,
            ),
            label: Text(
              "Sair",
              style: TextStyle(color: $n_medium),
            ))
      ],
    );
  }
}
