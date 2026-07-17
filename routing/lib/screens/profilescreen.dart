import 'package:flutter/material.dart';

class Profilescreen extends StatelessWidget {
  final String name;
  const Profilescreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome $name'),
      ),
    );
  }
}