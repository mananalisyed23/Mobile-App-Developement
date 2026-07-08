import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int index = 0;
  List<String> items =['Home','Search','Settings'];
  List<Widget> widgets =[
    Text('This is home screen'),
    Text('This is search screen'),
    Text('This is setting screen')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(items[index],
        style: TextStyle(
          color: Colors.white,
        ),),
        centerTitle: true,
      ),
      body: Center(
        // child: Text(
        //   // 'Index:$index',
        //   items[index],
        //   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        // ),
        child: widgets[index],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        iconSize: 32,
        selectedItemColor: Colors.green,
        currentIndex: index,
        items: [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search)),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
