import 'package:flutter/material.dart';
import 'package:widgets_intro/Screens/home.dart';

void main() {
  runApp(Widgets());
}

class Widgets extends StatelessWidget {
  const Widgets({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
