import 'package:flutter/material.dart';
import 'package:gesture_inkwell/screens/gesture_inkwell.dart';

void main (){
  runApp(GestAndInk());

}
class GestAndInk extends StatelessWidget {
  const GestAndInk({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDetectorScreen()
    );
  }
}