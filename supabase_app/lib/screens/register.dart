import 'package:flutter/material.dart';
import 'package:supabase_app/screens/login.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool loading = false;
  final supabase = Supabase.instance.client;
  void registerNow() async {
    setState(() {
      loading = true;
    });
    try {
      final result = await supabase.auth.signUp(
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
                    'Register Here',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  SizedBox(height: 50),
                  TextFormField(
                    controller: name,
                    decoration: InputDecoration(hintText: 'Name'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15),

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
                      registerNow();
                    },
                    child: Text('Register'),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?'),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        child: Text("Login"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
