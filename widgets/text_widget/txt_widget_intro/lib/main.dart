import 'package:flutter/material.dart';

void main() {
  runApp(ImageWidget());
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ImageWidget());
  }
}
