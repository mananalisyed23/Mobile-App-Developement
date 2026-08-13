import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  TextEditingController email = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  bool loading = false;

  void resetpassword() async {
    setState(() {
      loading = true;
    });
    try {
      await auth.sendPasswordResetEmail(email: email.text.trim());
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please check your email'),
          backgroundColor: Colors.green,
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.toString())));
    } finally {
      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Forgot Password screen')),
      body: loading
          ? Center(child: CircularProgressIndicator())
          : Center(
              child: ListView(
                padding: EdgeInsets.all(15),
                children: [
                  SizedBox(height: 30),
                  TextFormField(
                    controller: email,
                    decoration: InputDecoration(hintText: 'Email'),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      resetpassword();
                    },
                    child: Text('Reset password'),
                  ),
                ],
              ),
            ),
    );
  }
}
