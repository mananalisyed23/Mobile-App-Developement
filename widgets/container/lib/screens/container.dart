import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container'), backgroundColor: Colors.purple),
      body: Column(children: [
        Container(
        height: 100,
        width: 200,
        margin: EdgeInsets.fromLTRB(100, 50, 100, 100),
        decoration: BoxDecoration(
          //color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black, width: 3),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(50),
              blurRadius: 5,
              offset: Offset(10, 10),
            ),
          ],
          //shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              Colors.tealAccent,
              Colors.greenAccent,
              Colors.amberAccent,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
        ),
      ),
      Container(
        height: 100,
        width: 200,
        margin: EdgeInsets.fromLTRB(100, 50, 100, 100),
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Colors.teal,
        child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage('https://tse1.mm.bing.net/th/id/OIP._vFhp4PlmDjOzFomMKxSwgHaE8?pid=Api&h=220&P=0'))
        ),
        ),
      ),
      ],) 
    );
  }
}
