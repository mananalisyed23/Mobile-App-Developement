import 'package:flutter/widgets.dart';

class HomeProvider with ChangeNotifier{
  int count =0;
  void increment(){
    count++;
    notifyListeners();
  }
}