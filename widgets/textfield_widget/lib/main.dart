import 'package:flutter/material.dart';
import 'package:textfield_widget/screens/textfield_widget.dart';

void main(){
  runApp(TextFieldWidget());
}
class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TextfieldScreen(),
    );
  }
}