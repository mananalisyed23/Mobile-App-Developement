import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('GridView ', style: TextStyle(color: Colors.white)),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          Image.asset('assets/images/image1.jfif', fit: BoxFit.fill),
          Image.asset('assets/images/image2.jfif', fit: BoxFit.fill),
          Image.asset('assets/images/image3.jfif', fit: BoxFit.fill),
          Image.asset('assets/images/image1.jfif', fit: BoxFit.fill),
          Image.asset('assets/images/image2.jfif', fit: BoxFit.fill),
        ],
      ),
    );
  }
}
