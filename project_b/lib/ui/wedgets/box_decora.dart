
import 'package:flutter/material.dart';

class BoxDecora extends StatelessWidget {
  BoxDecora({@required this.color});
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color),
      height: 100.0,
      width: 100.0,
      padding: new EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
    );
  }
}