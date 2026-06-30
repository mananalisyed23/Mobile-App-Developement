import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  String title = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_home),
      ),
      appBar: AppBar(backgroundColor: Colors.tealAccent, title: Text(title)),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 30),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(15),
              ),
              elevation: 10,
              minimumSize: Size(202, 48),
              maximumSize: Size(402, 72),
            ),

            child: Text('Click me'),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 30),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(15),
              ),
              elevation: 10,
              minimumSize: Size(202, 48),
              maximumSize: Size(402, 72),
            ),
            icon: Icon(Icons.home),
            label: Text('Click me'),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                title = 'Button';
              });
            },
            child: Text('Button', style: TextStyle(color: Colors.amber)),
          ),
          IconButton(
            onPressed: () {},
            color: Colors.redAccent,
            iconSize: 30,
            icon: Icon(Icons.favorite),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.teal,
              side: BorderSide(color: Colors.teal, width: 2),
            ),
            child: Text('Outline btn'),
          ),
        ],
      ),
    );
  }
}
