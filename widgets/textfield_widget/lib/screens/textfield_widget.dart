import 'package:flutter/material.dart';

class TextfieldScreen extends StatefulWidget {
  const TextfieldScreen({super.key});

  @override
  State<TextfieldScreen> createState() => _TextfieldScreenState();
}

class _TextfieldScreenState extends State<TextfieldScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('TextField Widget'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'Enter your details',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          TextField(
            controller: email,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Enter Email',
              labelText: 'Email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              prefix: Icon(Icons.email, size: 15),
              suffix: IconButton(
                onPressed: () {
                  email.clear();
                },
                icon: Icon(Icons.close),
              ),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            obscureText: true,
            obscuringCharacter: '*',
            keyboardType: TextInputType.text,
            controller: password,
            decoration: InputDecoration(
              hintText: 'Enter Password',
              labelText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              prefix: Icon(Icons.lock, size: 15),
              suffix: IconButton(
                onPressed: () {
                  password.clear();
                },
                icon: Icon(Icons.close),
              ),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            maxLines: 5,
            decoration: InputDecoration(
              labelText: 'Description',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              email.text;
              password.text;
            },
            style: ElevatedButton.styleFrom(fixedSize: Size(200, 50)),
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
