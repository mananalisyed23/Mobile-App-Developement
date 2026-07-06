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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formkey,
          child: Stack(
            children: [
              Positioned(
                top: -130,
                left: -130,
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.indigo.withAlpha(100),
                  shape: BoxShape.circle,
                ),
              )),
              Positioned(
                top: -90,
                left: -90,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.indigo.withAlpha(150),
                  shape: BoxShape.circle,
                ),
              )),
              ListView(
            children: [
              SizedBox(height: 100),
              FlutterLogo(size: 100),
              SizedBox(height: 20),
              Text(
                'Login Here',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: email,
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if (value==null || value.isEmpty){
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: password,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if (value==null || value.isEmpty){
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if(formkey.currentState!.validate()){}
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Login'),
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: () {},
                  child: Text('Forgot password?')),
                ],
              ),
              SizedBox(height: 150),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(padding: EdgeInsets.all(15)),
                  child: Text('Do not have an account? Register here'),
                ),
              ),
            ],
          ),
          Positioned(
                bottom: 40,
                right: -130,
              child: Container(
                height: 250,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.indigo.withAlpha(60),
                  shape: BoxShape.circle,
                ),
              )),
              Positioned(
                bottom: 65,
                right: -70,
              child: Container(
                height: 150,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.indigo.withAlpha(120),
                  shape: BoxShape.circle,
                ),
              )),
            ],
          )
        ),
      ),
    );
  }
}
