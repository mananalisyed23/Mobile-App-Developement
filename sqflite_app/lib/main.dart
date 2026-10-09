import 'package:flutter/material.dart';
import 'package:sqflite_app/screens/home_screen.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(SQFlite());
}
class SQFlite extends StatelessWidget {
  const SQFlite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Flutter Demo', 
    home: HomeScreen());
  }
}
