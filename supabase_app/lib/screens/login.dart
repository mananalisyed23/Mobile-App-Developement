import 'package:flutter/material.dart';
import 'package:supabase_app/homescreen.dart';
import 'package:supabase_app/screens/register.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool loading = false;
  final supabase = Supabase.instance.client;
  void loginNow() async {
    setState(() {
      loading = true;
    });
    try {
      final result = await supabase.auth.signInWithPassword(
        email: email.text.trim(),
        password: password.text,
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
      body: loading
          ? Center(child: CircularProgressIndicator())
          : Form(
              key: formkey,
              child: ListView(
                padding: EdgeInsets.all(15),
                children: [
                  SizedBox(height: 50),
                  Text(
                    'LogIn Here',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  SizedBox(height: 50),
                  TextFormField(
                    controller: email,
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
                    controller: password,
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
                      loginNow();
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Homescreen()),
                      );
                    },
                    child: Text('Log in'),
                  ),
                  SizedBox(height: 20),
                  TextButton(onPressed: () {}, child: Text('Forgot password?')),

                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Dont have an account?'),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterScreen(),
                            ),
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
