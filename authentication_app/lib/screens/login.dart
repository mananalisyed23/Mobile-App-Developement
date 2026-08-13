import 'package:authentication_app/screens/forgot_pass.dart';
import 'package:authentication_app/screens/home_screen.dart';
import 'package:authentication_app/screens/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
  FirebaseAuth auth = FirebaseAuth.instance;

  void loginNow() async {
    setState(() {
      loading = true;
    });
    try {
      await auth.signInWithEmailAndPassword(
        email: email.text.trim(),
        password: password.text,
      );
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
        (value) => false,
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

  void continueWithgoogle() async {
    String webClientid =
        "1003741581440-huknqbjj2f58gh8t6hpd024ttevvu4aa.apps.googleusercontent.com";
    try {
      GoogleSignIn signIn = GoogleSignIn.instance;
      await signIn.initialize(serverClientId: webClientid);
      GoogleSignInAccount account = await signIn.authenticate();
      GoogleSignInAuthentication googleauth = account.authentication;
      final credential = GoogleAuthProvider.credential(
        idToken: googleauth.idToken,
      );

      await auth.signInWithCredential(credential);
      setState(() {
        loading = true;
      });
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
        (value) => false,
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
                    },
                    child: Text('Log in'),
                  ),
                  SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ForgotScreen()),
                      );
                    },
                    child: Text('Forgot password?'),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Continue with google'),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Dont have an account?'),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
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
