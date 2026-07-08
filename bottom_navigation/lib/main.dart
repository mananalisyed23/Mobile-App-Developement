import 'package:bottom_navigation/screens/bottom_nav.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(BottomNav());
}
class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigation(),
    );
  }
}