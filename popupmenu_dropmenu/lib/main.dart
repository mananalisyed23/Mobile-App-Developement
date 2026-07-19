import 'package:flutter/material.dart';
import 'package:popupmenu_dropmenu/screens/popdrop_menu.dart';

void main(){
  runApp(PopupDropMenu());

}
class PopupDropMenu extends StatelessWidget {
  const PopupDropMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: PopdropScreen() ,
    );
  }
}