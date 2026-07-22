import 'package:advaced_navigation/screens/landing_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Advacednavigation());
}
class Advacednavigation extends StatelessWidget {
  const Advacednavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LandingScreen() ,
    );
  }
}