import 'package:flutter/material.dart';
import 'package:listview/screens/listview.dart';

void main() {
  runApp(ListViewWidget());
}

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ListViewScreen());
  }
}
