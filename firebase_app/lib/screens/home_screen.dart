import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_app/screens/add_user.dart';
// ignore: unused_import
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final dbRef = FirebaseFirestore.instance.collection('users');
  List<Map<String, dynamic>> users = [];
  void fetchData() async {
    users.clear();
    final data = await dbRef.get();
    setState(() {
      for (var doc in data.docs) {
        users.add(doc.data());
      }
    });
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: ListView(
        children: [
          for (var user in users)
            ListTile(
              title: Text(user['name']), 
              subtitle: Text(user['email']),
              trailing: IconButton(
              onPressed: (){
                dbRef.doc(user['id']).delete();
              }, 
              icon: Icon(Icons.delete)),
              ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddUser()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
