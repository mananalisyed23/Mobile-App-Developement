import 'package:alert_dialog/screens/homeScreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(AlertDialog());
}
class AlertDialog extends StatelessWidget {
  const AlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AlertScreen()
    );
  }
}