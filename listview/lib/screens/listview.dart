import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List View Screen')),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.blueAccent,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.tealAccent,
            height: 100,
          ),

          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.blueGrey,
            height: 100,
          ),

          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.amber,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.redAccent,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.purple,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.blueGrey,
            height: 100,
          ),

          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.amber,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.deepOrange,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.pink,
            height: 100,
          ),
        ],
      ),
    );
  }
}
