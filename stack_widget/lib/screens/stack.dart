import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Stack and Positioned'),
      ),
      body: Stack(
        children: [
          Positioned(
            left: 100,
            bottom: -50,
            child: Container(
              color: Colors.amber.withAlpha(123),
              height: 200,
              width: 200,
            ),
          ),
          Positioned(
            top: -10,
            right: -50,
          child: 
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue.withAlpha(50)
            ),
          )
          ),
          Positioned(
            top: 120,
            left: -50,
          child: 
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 243, 180, 33).withAlpha(50)
            ),
          )
          )
        ],
      ),
    );
  }
}