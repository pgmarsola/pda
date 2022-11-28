import 'package:flutter/material.dart';
import 'package:pda/components/topbar.dart';
import 'package:pda/util/colors.dart';

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
      appBar: TopBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              onTap: () {},
              title: Text(
                "Sair".toUpperCase(),
                style: TextStyle(color: $n_dark),
              ),
              trailing: Icon(Icons.exit_to_app),
              iconColor: $p_orange_dark,
            )
          ],
        ),
      ),
      body: Container(
        child: Text(widget.student!.nome.toString()),
      ),
    );
  }
}
