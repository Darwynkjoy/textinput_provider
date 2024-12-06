import 'package:flutter/material.dart';

class Textprovider extends ChangeNotifier{
  String _Text="";
  String get Text=>_Text;
  
  void changedtext(String val){
    _Text=val;
    notifyListeners();
  }
}