import 'package:authentication_app/screens/home_screen.dart';
import 'package:authentication_app/screens/register.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: ListView(
          padding: EdgeInsets.all(15),
          children: [
            SizedBox(height: 50),
            Text('LogIn Here', style: Theme.of(context).textTheme.displayLarge),
            SizedBox(height: 50),
            TextFormField(
              decoration: InputDecoration(hintText: 'Email'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter email';
                }
                return null;
              },
            ),
            SizedBox(height: 15),
            TextFormField(
              decoration: InputDecoration(hintText: 'Password'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter password';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Text('Log in'),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text('Dont have an account?'),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()),
                    );
                  },
                  child: Text("Register now!"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
