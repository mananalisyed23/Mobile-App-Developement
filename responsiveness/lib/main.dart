import 'package:flutter/material.dart';
import 'package:responsiveness/screens/flexible_expended.dart';

void main() {
  runApp(ListViewWidget());
}

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FlexibleExpendedScreen());
  }
}
