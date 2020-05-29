import 'package:flutter/material.dart';
import 'package:photo_search/screens/views/picture/pic_view.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel{
  String _value = "";

  String get value => _value;
  
  void updateValue(value) {
    _value = value;
    notifyListeners();
  }

  void navigationToView(context){
    if(_value != "")
      Navigator.push( context, MaterialPageRoute( builder: (context) => PhotoListView(keyword: _value,), ));
  }
}