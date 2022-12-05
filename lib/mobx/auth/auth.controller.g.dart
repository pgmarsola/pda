// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthController on _AuthControllerBase, Store {
  late final _$userAtom =
      Atom(name: '_AuthControllerBase.user', context: context);

  @override
  UserCredential? get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserCredential? value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$loadAtom =
      Atom(name: '_AuthControllerBase.load', context: context);

  @override
  bool get load {
    _$loadAtom.reportRead();
    return super.load;
  }

  @override
  set load(bool value) {
    _$loadAtom.reportWrite(value, super.load, () {
      super.load = value;
    });
  }

  late final _$loginAsyncAction =
      AsyncAction('_AuthControllerBase.login', context: context);

  @override
  Future login(String email, String senha) {
    return _$loginAsyncAction.run(() => super.login(email, senha));
  }

  @override
  String toString() {
    return '''
user: ${user},
load: ${load}
    ''';
  }
}
