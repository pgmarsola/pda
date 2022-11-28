import 'package:flutter/material.dart';
import 'package:pda/components/input.dart';
import 'package:pda/mobx/auth/auth.controller.dart';
import 'package:pda/mobx/student/student.controller.dart';
import 'package:pda/screen/home.dart';
import 'package:pda/util/colors.dart';
import 'package:pda/util/load.dart';
import 'package:pda/util/responsive.dart';

import '../util/navigator.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController ra_controller = TextEditingController();
  AuthController? _authController;
  StudentController? _studentController;

  bool _load = false;

  @override
  void initState() {
    super.initState();
    _authController = AuthController();
    _studentController = StudentController();
    _students();
  }

  _students() async {
    _studentController = StudentController();
    _authController = AuthController();
    _studentController!.loadStudents();
  }

  _handkeSignIn(String? value) async {
    setState(() {
      _load = true;
    });

    await _authController!.login(value!, _studentController);

    setState(() {
      _load = false;
    });

    if (_authController!.student == null) {
      const snackBar = SnackBar(
          backgroundColor: Colors.red,
          content: Text("Erro ao tentar fazer login"));

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      Nav.pushReplacement(
          context,
          Home(
            student: _authController!.student,
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $n_white,
      body: Center(
          child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Input(
                    controller: ra_controller,
                    formatter: true,
                    hintText: "Insira seu RA",
                  ),
                  SizedBox(
                    height: responsive(context) * 3,
                  ),
                  _load
                      ? Load()
                      : ElevatedButton(
                          onPressed: () async {
                            _handkeSignIn(ra_controller.text);
                            print("apertou");
                          },
                          child: Text("Entrar"))
                ],
              ))),
    );
  }
}
