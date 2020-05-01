import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            // verticalDirection: VerticalDirection.down,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 100.0,
                // width: 100.0,
                // margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0 ),
                color: Colors.white,
                child: Text('Hello'),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                // width: 300.0,
                height: 100.0,
                color: Colors.blue,
                child: Text('Container 2')
              ),
              Container(
                width: double.infinity,
                height: 100.0,
                color: Colors.red,
                child: Text('Container 3')
              ),
              Container(
                width: double.infinity,
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}