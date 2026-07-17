import 'package:flutter/material.dart';

class Settingscreen extends StatelessWidget {
  final String name , email;
  const Settingscreen({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Settings'),
    ),
    body: Column(
      children: [
        ListTile(
          title: Text('Name'),
          subtitle: Text(name),
        ),
         ListTile(
          title: Text('Email'),
          subtitle: Text(email),
        ),
      ],
    )
    ,);
  }
}
