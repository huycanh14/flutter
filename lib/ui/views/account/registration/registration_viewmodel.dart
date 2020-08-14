import 'package:flutter/material.dart';
import 'package:login_app/models/account.dart';
import 'package:stacked/stacked.dart';

class RegistrationViewModel extends BaseViewModel {
  Account _account = new Account();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _username = TextEditingController();
  TextEditingController _birthday = TextEditingController();
  TextEditingController _gender = TextEditingController();


  Account get account => _account;
  TextEditingController get email => _email;
  TextEditingController get password => _password;
  TextEditingController get username => _username;
  TextEditingController get birthday => _birthday;
  TextEditingController get gender => _gender;

}