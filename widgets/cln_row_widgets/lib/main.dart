import 'package:cln_row_widgets/screens/cln_row.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(ColumnRow());
}

class ColumnRow extends StatelessWidget {
  const ColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColumnRowScreen(),
    );
  }
}