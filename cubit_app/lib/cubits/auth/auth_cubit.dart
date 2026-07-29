import 'package:cubit_app/cubits/auth/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(InitialState());
  void Login(String email, String password) async {
    emit(LoadingState());
    await Future.delayed(Duration(seconds: 3));
    if (email == 'abc@gmail.com' && password == '1234') {
      emit(SuccessState());
    } else {
      emit(FailureState('Invalid credentials'));
    }
  }
}
