import 'package:bloc_app/bloc/auth/auth_bloc.dart';
import 'package:bloc_app/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BloCApp());
}

class BloCApp extends StatelessWidget {
  const BloCApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(create: (context) => AuthBloc(), child: HomeScreen()),
    );
  }
}
