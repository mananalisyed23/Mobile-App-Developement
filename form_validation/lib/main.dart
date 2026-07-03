import 'package:flutter/material.dart';
import 'package:form_validation/screens/form_screen.dart';

void main(){
  runApp(FormValidation());
}
class FormValidation extends StatelessWidget {
  const FormValidation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:FormValidationScreen()
    );
  }
}