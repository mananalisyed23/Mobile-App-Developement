import 'package:flutter/material.dart';
import 'package:navigation/screens/homeScreen.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Splash Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Homescreen();
                },
              ),
            );
          },
          child: Text('Get started'),
        ),
      ),
    );
  }
}
