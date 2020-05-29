import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel{
  int _val = 0;
  int _red = 255;
  int _green = 255;
  int _black = 0;
  double _max = 255;
  double _pi = 360;

  int get val => _val;
  int get red => _red;
  int get green => _green;
  int get black => _black;
  double get max => _max;
  double get pi => _pi;

  void updateColorRed(value){
    _red = value.round();
    notifyListeners();
  }
  void updateColorGreen(value){
    _green = value.round();
    notifyListeners();
  }
  void updateColorBlack(value){
    _black = value.round();
    notifyListeners();
  }
  void updateValue(value){
    _val = value.round();
    notifyListeners();
  }

  Color getColor(String color){
    if(color == 'red')
      return Color.fromRGBO(_red, 0, 0, 1);
    else if(color == 'green')
      return Color.fromRGBO(0, _green, 0, 1);
    else
      return Color.fromRGBO(0, 0, _black, 1);
  }

}