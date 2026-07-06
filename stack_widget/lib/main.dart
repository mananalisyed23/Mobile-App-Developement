import 'package:flutter/material.dart';
import 'package:stack_widget/screens/stack.dart';

void main(){
  runApp(StackWidget());
}
class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:StackScreen() ,
    );
  }
}