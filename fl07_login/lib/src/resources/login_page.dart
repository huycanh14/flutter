import 'package:fl07_login/src/blocs/login_bloc.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginBloc bloc = new LoginBloc();

  bool _showPassword = false;
  TextEditingController _userController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
      constraints: BoxConstraints.expand(),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 100.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xffd8d8d8)),
                padding: EdgeInsets.all(15),
                child: FlutterLogo(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
              child: Text(
                "Hello\nWelcome Back",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 30),
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: StreamBuilder(
                  stream: bloc.userStream,
                  builder: (context, snapshot) => TextField(
                    controller: _userController,
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    decoration: InputDecoration(
                      labelText: "USERNAME",
                      labelStyle:
                          TextStyle(color: Colors.grey[500], fontSize: 15),
                      errorText: snapshot.hasError ? snapshot.error : null,
                    ),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: <Widget>[
                  StreamBuilder(
                    stream: bloc.userStream,
                    builder: (context, snapshot) => TextField(
                      controller: _passController,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      obscureText: !_showPassword,
                      decoration: InputDecoration(
                          labelText: "PASSWORD",
                          labelStyle:
                              TextStyle(color: Colors.grey[500], fontSize: 15),
                          errorText: snapshot.hasError ? snapshot.error : null,
                        ),
                    ),
                  ),
                  GestureDetector(
                    child: Text(
                      _showPassword ? "HIDE" : "SHOW",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: onToggleShowPass,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: RaisedButton(
                  onPressed: onSignInClicked,
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Text("SIGN IN"),
                ),
              ),
            ),
            Container(
                height: 130.0,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('NEW USER? SIGN UP',
                        style: TextStyle(
                            fontSize: 15.0, color: Color(0xFF888888))),
                    Text('FORGOT PASSWORD?',
                        style: TextStyle(fontSize: 15.0, color: Colors.blue)),
                  ],
                ))
          ],
        ),
      ),
    ));
  }

  void onToggleShowPass() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  void onSignInClicked() {
    if(bloc.isValidInfo(_userController.text, _passController.text)){
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
    }
  }
}
