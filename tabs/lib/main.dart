import 'package:flutter/material.dart';
import 'package:tabs/screens/tabs_screen.dart';

void main(){
  runApp(Tabs());
}
class Tabs extends StatelessWidget {
  const Tabs({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabsScreen(
        
      ),
    );
  }
}