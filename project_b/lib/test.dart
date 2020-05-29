import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stacked architecture demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _val = 0;
  int _red = 255;
  int _green = 255;
  int _black = 0;
  double _max = 255;
  double pi = 250.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stacked architecture demo'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(50),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(color: Color.fromRGBO(_red, 0, 0, 1)),
                  height: 100.0,
                  width: 100.0,
                  padding: new EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
              ),
              Container(
                  decoration: BoxDecoration(color: Color.fromRGBO(0, _green, 0, 1)),
                  height: 100.0,
                  width: 100.0,
                  padding: new EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
              ),
              Container(
                  decoration: BoxDecoration(color: Color.fromRGBO(0, 0, _black, 1)),
                  height: 100.0,
                  width: 100.0,
                  padding: new EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
              ),
                              
            ],
          ),
          Slider(
            value:_red.toDouble(), min:0.0, max:_max, divisions:180,
            onChanged:(double newValue) {
              setState(() {
                _red = newValue.round();
              });
            }
          ),
          Slider(
            value:_green.toDouble(), min:0.0, max:_max, divisions:180,
            onChanged:(double newValue) {
              setState(() {
                _green = newValue.round();
              });
            }
          ),
          Slider(
            value:_black.toDouble(), min:0.0, max:_max, divisions:180,
            onChanged:(double newValue) {
              setState(() {
                _black = newValue.round();
              });
            }
          ),

          Transform(
            child:new Container(
              child:new Text("Lorem ipsum",style:new TextStyle(color:Colors.white,fontSize:42.0,fontWeight:FontWeight.w900,)),decoration:BoxDecoration(
                color:Color.fromRGBO(_red, _green, _black, 1)),
              padding:new EdgeInsets.fromLTRB(16.0,16.0,16.0,16.0),),
            alignment:FractionalOffset.center,// đặt tâm quay
            transform:new Matrix4.rotationZ(_val.toDouble()),// quay -10 độ
          ),

          Slider(
            value:_val.toDouble(), min:0.0, max:pi, divisions:180,
            onChanged:(double newValue) {
              setState(() {
                _val = newValue.round();
              });
            }
          ),
        ],
      ),

    );
  }
}
