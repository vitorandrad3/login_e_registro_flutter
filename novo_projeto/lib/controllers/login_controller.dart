import 'package:flutter/material.dart';
import 'package:novo_projeto/models/user_list.dart';

class LoginController {
  static LoginController loginController = LoginController();

  ValueNotifier inLoader = ValueNotifier<bool>(true);

  late String _mail;
  setMail(String value) => _mail = value;

  late String _password;
  setPassword(String value) => _password = value;

  Future<bool> authentication() async {
    inLoader.value = false;
    await Future.delayed(const Duration(seconds: 2));
    inLoader.value = true;
    if (verifyUserMail(_mail)) {
      return authUser(_password, _mail);
    } else {
      return false;
    }
  }
}

verifyUserMail(mail) {
  getUsers();
  return getUsers().containsKey(mail);
}

authUser(String password, String mail) {
  if (getUsers()[mail]!.containsKey(password)) {
    return true;
  } else {
    return false;
  }
}
