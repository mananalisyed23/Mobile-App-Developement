import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String title = 'My Profile Card';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://tse2.mm.bing.net/th/id/OIP.s2QwWO8nkWBykZ6xadRgAQHaJ5?pid=Api&h=220&P=0',
              ),
              minRadius: 120,
              maxRadius: 120,
            ),
          ),
          Text(
            'Syed Manan Ali',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            "Hi! I am a python developer.I also make hybrid applications using flutter this is my practice exercise.",
            style: TextStyle(fontSize: 14, color: Colors.blueGrey),
            textAlign: TextAlign.justify,
          ),
          Row(
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(alignment: Alignment.center),
                onPressed: () {
                  setState(() {
                    title = 'Profile';
                  });
                },
                label: Text('Email Me'),
                icon: Icon(Icons.email),
              ),
              IconButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(alignment: Alignment.center),
                icon: Icon(Icons.save),
              ),
            ],
          ),
          TextButton(onPressed: () {}, child: Text("View My Portfolio")),
          ElevatedButton(onPressed: () {}, child: Text('Follow')),
          
        ],
      ),
    );
  }
}
