import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';


class BottomButton extends StatelessWidget {
  
  BottomButton({@required this.onTap, this.buttonTitle});

  final Function onTap;
  final String buttonTitle;
    
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Center(child: Text(buttonTitle, style: kLargeButtonTextStyle)),
        color: kBottomContianeColour,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
      onTap: onTap,
    );
  }
}