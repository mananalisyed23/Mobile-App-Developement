import 'package:flutter/material.dart';

class GestureDetectorScreen extends StatelessWidget {
  const GestureDetectorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture and Inkwell'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              print('Gesture detected');
            },
            child: Container(color: Colors.red, height: 100, width: 200),
          ),
          InkWell(
            onTap: () {
              print('Inkwell detected');
            },
            child: Text(
              'Hello World',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
