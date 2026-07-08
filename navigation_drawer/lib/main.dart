import 'package:flutter/material.dart';
import 'package:navigation_drawer/screens/navigation.dart';

void main()
{
  runApp(Navigationdrawer());

}
class Navigationdrawer extends StatelessWidget {
  const Navigationdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navigation(),
    );
  }
}