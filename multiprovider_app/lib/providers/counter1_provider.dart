import 'package:flutter/material.dart';

class Counter1Provider with ChangeNotifier{
  int count=0;
  void increment(){
    count++;
    notifyListeners();
  }
}