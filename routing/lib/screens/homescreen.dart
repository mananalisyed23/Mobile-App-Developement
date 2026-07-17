import 'package:flutter/material.dart';
import 'package:routing/screens/routes.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RoutesHelper.profile , arguments: 'Manan');
              },
              child: Text('Go to profile'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RoutesHelper.setting, arguments: {
                  'name':'Manan',
                  'email':'abc@gmail.com'
                });
              },
              child: Text('Go to settings'),
            ),
          ),
        ],
      ),
    );
  }
}
