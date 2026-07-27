import 'package:flutter/material.dart';

class Counter3Provider with ChangeNotifier{
   int count=0;
  void increment(){
    count= count+3;
    notifyListeners();
  }
}