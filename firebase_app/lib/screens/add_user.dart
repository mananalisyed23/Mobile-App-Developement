import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  final dbReference = FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add User Screen'), centerTitle: true),
      body: Form(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextFormField(
              controller: name,
              decoration: InputDecoration(hintText: 'Name'),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: email,
              decoration: InputDecoration(hintText: 'Email'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                String id = DateTime.now().millisecondsSinceEpoch.toString();
                await dbReference.doc(id).set({
                  'id': id,
                  'name': name.text,
                  'email': email.text,
                });
                Navigator.pop(context);
              },
              child: Text('Add User'),
            ),
          ],
        ),
      ),
    );
  }
}
