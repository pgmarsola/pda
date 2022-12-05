import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
import 'package:pda/mobx/auth/auth.repository.dart';
import 'package:pda/util/const.dart';

import '../student/student.controller.dart';

part 'auth.controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  final StudentController? _studentController = StudentController();
  AuthRepository? _authRepository;

  _AuthControllerBase() {
    _authRepository = AuthRepository();
  }

  @observable
  UserCredential? user;

  @observable
  bool load = false;

  @action
  login(
    String email,
    String senha,
  ) async {
    load = true;

    user = await _authRepository!.login(email, senha);

    if (user!.user!.uid != null) {
      StudentAccess.uid = user!.user!.uid;
      await _studentController!.loadStudent(StudentAccess.uid!);
    }
    load = false;
  }
}
