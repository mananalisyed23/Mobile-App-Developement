import 'package:bloc_app/bloc/auth/auth_bloc.dart';
import 'package:bloc_app/bloc/auth/auth_event.dart';
import 'package:bloc_app/bloc/auth/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BlocApp'),
        backgroundColor: Colors.blueAccent,
      ),
      body: 
      BlocListener<AuthBloc,AuthState>(
      listener: (context,state){
        if(state is AuthLoadingState){
          ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Login Successfully!')));
        }
      },
      child: Center(child: Text('Nothing')),
      ),
     // BlocConsumer(builder: builder, listener: listener)
      //BlocBuilder<AuthBloc, AuthState>(
      //   builder: (context, state) {
      //     if (state is AuthLoadingState) {
      //       return Center(child: CircularProgressIndicator());
      //     }
      //      if (state is AuthSuccessState) {
      //       return Center(child: Text('Login Successful'));
      //     }
      //      if (state is AuthFailureState) {
      //       return Center(child: Text(state.msg));
      //     }
      //     return SizedBox();
      //   },
      // ),
      bottomSheet: ElevatedButton(
        onPressed: () {
          BlocProvider.of<AuthBloc>(
            context,
            listen: false,
          ).add(LoginEvent('ahssdgusd', '122'));
        },
        child: Text('Login'),
      ),
    );
  }
}
