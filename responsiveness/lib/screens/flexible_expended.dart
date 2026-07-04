import 'package:flutter/material.dart';

class FlexibleExpendedScreen extends StatelessWidget {
  const FlexibleExpendedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List View Screen')),
      body: Column(
        children: [
          Flexible(
            flex: 3,
            child: Container(
              color: const Color.fromARGB(255, 64, 139, 251),
              //height: 100,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: const Color.fromARGB(255, 251, 64, 117),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.purpleAccent)),
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 228, 70, 12),
            ),
          ),
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 251, 195, 64),
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
