import 'package:login_app/ui/views/account/login/login_view.dart';
import 'package:flutter/material.dart';
import 'package:login_app/ui/views/account/registration/registration_view.dart';

var routes = <String, WidgetBuilder>{
  '/login': (context) => LoginView(),
  '/registration': (context) => RegistrationView(),
};