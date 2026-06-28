import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Screen'), backgroundColor: Colors.blue),
      body: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/image1.jfif'),
            radius: 50,
          ),
          Image(
            image: AssetImage('assets/images/image3.jfif'),
            // height: 100,
            // width: 200,
            fit: BoxFit.cover,
            // repeat: ImageRepeat.repeatY,
            alignment: Alignment.center,
          ),
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGa70BgePn1Rsf41oiG6ac0_TAzpKXj4d9qg&s',
          ),
        ],
      ),
    );
  }
}
