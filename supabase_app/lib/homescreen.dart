import 'package:flutter/material.dart';
import 'package:supabase_app/screens/login.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final supabase = Supabase.instance.client;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Supabase')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await supabase.auth.signOut();
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
              (context) => false,
            );
          },
          child: Text('LogOut'),
        ),
      ),
    );
  }
}
