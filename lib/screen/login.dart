import 'package:flutter/material.dart';
import 'package:pda/components/button.dart';
import 'package:pda/components/input.dart';
import 'package:pda/components/logo.dart';
import 'package:pda/helper/conectivity.state.dart';
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
  TextEditingController email_controller = TextEditingController();
  TextEditingController senha_controller = TextEditingController();
  AuthController? _authController;
  StudentController? _studentController;

  bool _load = false;

  @override
  void initState() {
    super.initState();
    _authController = AuthController();
    _studentController = StudentController();
  }

  _handkeSignIn(String? email, String? senha) async {
    bool conect = await checkInternetConnection();
    if (conect == false) {
      const snackBar = SnackBar(
          backgroundColor: Colors.red,
          content: Text("Você está sem conexão com a internet"));

      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      setState(() {
        _load = true;
      });

      await _authController!.login(email!, senha!);

      setState(() {
        _load = false;
      });

      if (_authController!.user!.user!.uid == null) {
        const snackBar = SnackBar(
            backgroundColor: Colors.red,
            content: Text("Erro ao tentar fazer login"));

        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else {
        await _studentController!.getInfo();
        // ignore: use_build_context_synchronously
        Nav.pushReplacement(
            context,
            Home(
              student: _studentController!.student,
            ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $n_white,
      body: Center(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: responsive(context) * 4),
        child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Logo(20),
                SizedBox(
                  height: responsive(context) * 2,
                ),
                Input(
                  controller: email_controller,
                  formatter: true,
                  password: false,
                  labelText: "Usuário",
                ),
                SizedBox(
                  height: responsive(context) * 2,
                ),
                Input(
                  controller: senha_controller,
                  formatter: false,
                  password: true,
                  labelText: "Senha",
                ),
                SizedBox(
                  height: responsive(context) * 3,
                ),
                _load
                    ? Load()
                    : Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Esqueci minha senha",
                              style: TextStyle(color: $p_orange_light),
                            ),
                          ),
                          SizedBox(
                            width: responsive(context) * 2,
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: Button(
                                press: () async {
                                  _handkeSignIn(
                                      email_controller.text + "@student.com.br",
                                      senha_controller.text);
                                },
                                primary: true,
                                title: "Entrar"),
                          )
                        ],
                      )
              ],
            )),
      )),
    );
  }
}
