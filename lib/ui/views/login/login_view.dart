import 'package:flutter/material.dart';
import 'package:login_app/constants/text_const.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Thông tin đăng nhâp"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment:  MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
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
                              icon: Icon(Icons.visibility), onPressed: null)),
                      obscureText: true,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Container(
                    // padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width *1,
                    height: MediaQuery.of(context).size.height *0.08,
                    child: RaisedButton(
                      onPressed: () => {},
                      textColor: Colors.white,
                      color: Colors.lightGreen,
                      child: Text(
                        'Đăng nhập',
                        style: TextStyle(fontSize: 20),
                      ),
                      padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    )
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Đăng ký tài khoản', style: textHomeRoute,),
                  Text('Quên mật khẩu', style: textHomeRoute,)
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
