import 'package:flutter/material.dart';

class FormValidationScreen extends StatefulWidget {
  const FormValidationScreen({super.key});

  @override
  State<FormValidationScreen> createState() => _FormValidationScreenState();
}

class _FormValidationScreenState extends State<FormValidationScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Validation'),
        backgroundColor: Colors.yellow,
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            SizedBox(height: 20),
            TextFormField(
              controller: name,
              decoration: InputDecoration(
                hintText: 'Name',
                suffix: IconButton(
                  onPressed: () {
                    name.clear();
                  },
                  icon: Icon(Icons.close),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                if (value.length < 10) {
                  return 'Minimum length of pasword should be 8';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: phone,
              decoration: InputDecoration(
                hintText: 'Phone',
                suffix: IconButton(
                  onPressed: () {
                    phone.clear();
                  },
                  icon: Icon(Icons.close),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your Phone number';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: email,
              decoration: InputDecoration(
                hintText: 'Email',

                suffix: IconButton(
                  onPressed: () {
                    email.clear();
                  },
                  icon: Icon(Icons.close),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your Email';
                }
                if (!value.contains('@')) {
                  return 'Invalid Email Address';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: password,
              decoration: InputDecoration(
                hintText: 'Password',
                suffix: IconButton(
                  onPressed: () {
                    password.clear();
                  },
                  icon: Icon(Icons.close),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                if (!value.contains(RegExp(r'[a-zA-Z]'))) {
                  return 'Should contain at least one alphabet';
                }
                if (!value.contains(RegExp(r'[0-9]'))) {
                  return 'Should contain at least one number';
                }
                if (!value.contains(RegExp(r'[!@#$%^&*()_+={[:;?/.,|\]}]'))) {
                  return 'Should contain at least one number';
                }
                if (value.length < 8) {
                  return 'Minimum length of pasword should be 8';
                }

                return null;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (formkey.currentState!.validate()) {
                  print('Name: ${name.text}');
                  print('Phone: ${phone.text}');
                  print('Email: ${email.text}');
                  print('Password: ${password.text}');
                }
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
