import 'package:container/screens/container.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(ContainerWidget());
  }
class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContainerScreen(),
    );
  }
}