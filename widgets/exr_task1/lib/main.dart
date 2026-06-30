import 'package:exr_task1/screens/profile_screen.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyProfile());
}
class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}