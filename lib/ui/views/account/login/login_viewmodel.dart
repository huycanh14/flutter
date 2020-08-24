import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_app/models/account.dart';

import 'package:stacked/stacked.dart';

class LoginViewModel extends BaseViewModel {
  Account _account = new Account();
  Account get account => _account;

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  TextEditingController get email => _email;
  TextEditingController get password => _password;

  String checkValidateEmail(value) {
    if (value.isEmpty) return "Email bạn đang để trống";
    if (!RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(value)) return "Không đúng email";
    return null;
  }

  String checkValidatePassword(value) {
    if (value.isEmpty) return "Password bạn đang để trống";
    return null;
  }

  signInWithEmailAndPassword() async {
    _account.updateEmail(_email.text);
    _account.updatePassword(_password.text);
    var request = await _account.signInWithEmailAndPassword();
    return request.statusCode == 200;
  }
}
