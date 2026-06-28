import 'package:flutter/material.dart';
import 'package:image_widget/screens/imagescreen.dart';

void main() {
  runApp(MyImageWidget());
}

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ImageScreen());
  }
}
