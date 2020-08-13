import 'package:flutter/material.dart';
import 'package:login_app/constants/text_const.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        builder: (context, LoginViewModel model, child) => Scaffold(
            appBar: AppBar(
              title: Text("Thông tin đăng nhâp"),
            ),
            body: Column(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  // key: _formKey,
                  child: Form( //Expanded
                   key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: TextFormField(
                            controller: model.email,
                            validator: (value) {
                              return model.checkValidateEmail(value);
                            },
                            decoration: InputDecoration(
                              labelText: "Nhập email của bạn",
                              border: new OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: new BorderSide(),
                              ),
                              icon: const Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: const Icon(Icons.email)),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            onSaved: (String value) {
                              print(value);
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "Nhập mật khẩu của bạn",
                              border: new OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: new BorderSide(),
                              ),
                              icon: const Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: const Icon(Icons.lock)),
                              suffixIcon: IconButton(
                                  icon: Icon(Icons.visibility), onPressed: null),
                            ),
                            obscureText: true,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(20)),
                        Container(
                            width: MediaQuery.of(context).size.width * 1,
                            height: MediaQuery.of(context).size.height * 0.08,
                            child: RaisedButton(
                              onPressed: () => {
                                if (_formKey.currentState.validate()) {
                                  print(model.email.text)
                                }
                              },
                              textColor: Colors.white,
                              color: Colors.lightGreen,
                              child: Text(
                                'Đăng nhập',
                                style: TextStyle(fontSize: 20),
                              ),
                              padding: EdgeInsets.all(0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            )),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Đăng ký tài khoản',
                          style: textHomeRoute,
                        ),
                        Text(
                          'Quên mật khẩu',
                          style: textHomeRoute,
                        )
                      ],
                    ),
                  ),
                )
              ],
            )),
        viewModelBuilder: () => LoginViewModel());
  }
}
