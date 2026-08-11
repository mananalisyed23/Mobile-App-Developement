import 'package:flutter/material.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Forgot Password screen')),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(15),
          children: [
            SizedBox(height: 30,),
            TextFormField(decoration: InputDecoration(hintText: 'Email')),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text('Reset password')),
          ],
        ),
      ),
    );
  }
}
