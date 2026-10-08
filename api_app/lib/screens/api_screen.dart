import 'dart:convert';

import 'package:api_app/screens/post_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HState();
}

class _HState extends State<HomeScreen> {
  bool loading = false;

  String link = 'https://dummyjson.com/posts';

  List<PostModel> posts = [];

  void getData() async {
    setState(() {
      loading = true;
      posts.clear();
    });

    try {
      final response = await http.get(Uri.parse(link));

      print(response.statusCode);

      final data = jsonDecode(response.body);

      for (var post in data['posts']) {
        PostModel newpost = PostModel(
          post['id'],
          post['userId'],
          post['title'],
          post['body'],
        );

        posts.add(newpost);
      }

      setState(() {});
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
      appBar: AppBar(title: Text('API Integration')),
      body: loading
          ? Center(child: CircularProgressIndicator())
          : Column(
              children: [
                ElevatedButton(
                  onPressed: getData, 
                  child: Text('Get API')),
                Expanded(
                  child: ListView(
                    children: [
                      for (var post in posts)
                        ListTile(
                          title: Text(post.title),
                          subtitle: Text(post.body),
                        ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
