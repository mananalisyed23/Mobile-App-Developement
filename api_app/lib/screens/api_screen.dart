import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HState();
}

class _HState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api integration'),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){

          }, 
          child: Text('get api'))
        ],
      ),
    );
  }
}