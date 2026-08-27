import 'package:e_comm_app/screens/onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EcomApp());
}

class EcomApp extends StatelessWidget {
  const EcomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardScreen(),
    );
  }
}
