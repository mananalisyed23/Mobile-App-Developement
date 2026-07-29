import 'package:cubit_app/cubits/auth/auth_cubit.dart';
import 'package:cubit_app/cubits/auth/auth_state.dart';
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
        title: Text('Cubit App'),
        backgroundColor: Colors.blueAccent,
      ),
      body: BlocConsumer<AuthCubit,AuthState>(
        builder: (context, state) {
          if (state is LoadingState) {
            return Center(child: CircularProgressIndicator());
          }
          return SizedBox();
        },
        listener: (context, state) {
          if (state is SuccessState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Logged in successfully'),
                backgroundColor: Colors.green,
              ),
            );
          }
          if (state is FailureState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.msg), 
              backgroundColor: Colors.red),
            );
          }
        },
      ),
      bottomSheet: ElevatedButton(
        onPressed: () {
          context.read<AuthCubit>().Login('email', 'password');
        },
        child: Text('Login here'),
      ),
    );
  }
}
