import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Column(
        children: [
          Text('Welcome to the Home Screen!'),
          ElevatedButton(
            onPressed: () {
            },
            child: Text('Go to Details'),
          ),
        ],
      )
      );
  }
}