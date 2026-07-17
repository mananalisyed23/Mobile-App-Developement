import 'package:flutter/material.dart';
import 'package:navigation/screens/homeScreen.dart';
import 'package:navigation/screens/splashscreen.dart';

void main() {
  runApp(Navigation());
}

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Splashscreen());
  }
}
