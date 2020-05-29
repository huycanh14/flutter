// Bài tập 1
// Flutter Basics - Thực hành kỹ năng Flutter cơ bản
// Học viên: Đặng Huy Cảnh
// Mã học viên: 1621050058
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "First app flutter",
          ),
        ),
      ),
      body: MyAppHome(),
    ));
  }
}

class MyAppHome extends StatefulWidget {
  @override
  _MyAppHomeState createState() => _MyAppHomeState();
}

class _MyAppHomeState extends State<MyAppHome> {
  String _textBody = "Welcome to my app";
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            _textBody,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
          ),
          TextField(
            controller: myController,
          ),
          new FlatButton(
            onPressed: _handleClick,
            child: Text(
              'Click here',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            color: Colors.blue,
          ),
        ],
      ),
    );
  }

  void _handleClick() {
    setState(() {
      _textBody = "Bạn vừa nhập: " + myController.text;
    });
  }
}
