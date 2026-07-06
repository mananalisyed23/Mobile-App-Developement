import 'package:flutter/material.dart';
import 'package:loginscreen_exercise/screens/loginScreen.dart';

void main(){
  runApp(LoginExercise());
}
class LoginExercise extends StatelessWidget {
  const LoginExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}