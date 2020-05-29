import 'package:flutter/material.dart';

class TransformView extends StatelessWidget {
  TransformView({@required this.text, this.color, this.value});
  final String text;
  final Color color;
  final int value;
  @override
  Widget build(BuildContext context) {
    return Transform(
      child:new Container(
        child:new Text("Lorem ipsum",style:new TextStyle(color:Colors.white,fontSize:42.0,fontWeight:FontWeight.w900,)),decoration:BoxDecoration(
          color:color),
        padding:new EdgeInsets.fromLTRB(16.0,16.0,16.0,16.0),),
      alignment:FractionalOffset.center,// đặt tâm quay
      transform:new Matrix4.rotationZ(value.toDouble()),// quay -10 độ
    );
  }
}