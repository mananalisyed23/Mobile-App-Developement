import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HState();
}

class _HState extends State<HomeScreen> {
  bool loading = false;
  String link = 'https:/jsonplaceholder.typicode.com/posts';

  void getData() async {
    setState(() {
      loading = true;
    });
    try {
      final response = await http.get(Uri.parse(link));
      final data = jsonDecode(response.body);
      print(data[0]);
    } catch (e) {
      print(e);
    } finally {
      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Api integration')),
      body: Center(
        child: loading
            ? CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: getData, child: Text('get api')),
                ],
              ),
      ),
    );
  }
}
