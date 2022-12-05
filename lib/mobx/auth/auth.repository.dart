import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pda/mobx/auth/auth.interface.dart';

class AuthRepository extends IAuthRepository {
  @override
  Future<dynamic> login(String? email, String? password) async {
    await Firebase.initializeApp();
    try {
      final userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: email.toString(), password: password.toString());

      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}
