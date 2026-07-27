import 'package:flutter/material.dart';

class Counter2Provider with ChangeNotifier{
  int count=0;
  void increment(){
    count= count+2;
    notifyListeners();
  }
}