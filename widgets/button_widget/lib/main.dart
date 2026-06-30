import 'package:button_widget/screens/button_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ButtonWidegt());
}

class ButtonWidegt extends StatelessWidget {
  const ButtonWidegt({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ButtonScreen());
  }
}
