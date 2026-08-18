import 'package:flutter/material.dart';
import 'package:supabase_app/homescreen.dart';
import 'package:supabase_app/screens/login.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final supabase = Supabase.instance.client;
  void nextScreen() async {
    await Future.delayed(Duration(seconds: 3));
    if (supabase.auth.currentSession == null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Homescreen()),
      );
    }
  }

  @override
  void initState() {
    nextScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: FlutterLogo(size: 100)));
  }
}
