import 'package:flutter/material.dart';
import 'package:grid_view/screens/grid_view.dart';

void main(){
  runApp(GridView());
}
class GridView extends StatelessWidget {
  const GridView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GridViewScreen(),
    );
  }
}