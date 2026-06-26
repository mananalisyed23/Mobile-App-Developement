import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String title = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 34, 208, 40),
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              title = 'ProConnect';
            });
          },
          child: Text('Click me'),
        ),
      ),
    );
  }
}
