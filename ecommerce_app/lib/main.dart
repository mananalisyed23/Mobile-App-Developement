import 'package:ecommerce_app/screens/ecom_app.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(EcommerceApp());
}
class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EcomApp(),
    );
  }
}