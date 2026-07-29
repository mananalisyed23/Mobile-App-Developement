import 'package:cubit_app/Home_screen.dart';
import 'package:cubit_app/cubits/auth/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(CubitApp());
}

class CubitApp extends StatelessWidget {
  const CubitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
      create: (context) => AuthCubit(), 
      child: HomeScreen()),
    );
  }
}
