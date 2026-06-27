import 'package:flutter/material.dart';
import 'package:txt_widget_intro/screens/textwidegt.dart';

void main (){
  runApp(TextWidget());
}
class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TextScreen());
  }
}