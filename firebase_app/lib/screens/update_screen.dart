import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UpdateScreen extends StatefulWidget {
  final Map<String, dynamic> user;
  const UpdateScreen({super.key, required this.user});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  final dbReference = FirebaseFirestore.instance.collection('users');
  @override
  void initState() {
    name.text = widget.user['name'];
    email.text = widget.user['email'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Update screen'), centerTitle: true),
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
                await dbReference.doc(widget.user['id']).update({
                  'name':name.text,
                  'email':email.text
                });
                Navigator.pop(context);
              },
              child: Text('Update User'),
            ),
          ],
        ),
      ),
    );
  }
}
