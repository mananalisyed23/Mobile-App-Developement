import 'package:datetime_picker/Screens/Home_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DateTimePicker());
} 
class DateTimePicker extends StatelessWidget {
  const DateTimePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DateTimeScreen(),
    );
  }
}