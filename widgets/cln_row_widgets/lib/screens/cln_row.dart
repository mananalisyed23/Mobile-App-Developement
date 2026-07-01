import 'package:flutter/material.dart';

class ColumnRowScreen extends StatelessWidget {
  const ColumnRowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Column And Row'),
      ),
      body: Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('This is simple text'),
          ElevatedButton(onPressed: () {}, child: Text('Button')),
          Container(height: 100, width: 200, color: Colors.amber),
          Row(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(height: 100, width: 100, color: Colors.blue),
              Container(height: 100, width: 100, color: Colors.teal),
              Container(height: 100, width: 100, color: Colors.red),
            ],
          ),
        ],
      ),
    );
  }
}
