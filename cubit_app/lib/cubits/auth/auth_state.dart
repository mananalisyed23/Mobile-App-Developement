abstract class AuthState {}

class InitialState extends AuthState {}

class LoadingState extends AuthState {}

class SuccessState extends AuthState {}

class FailureState extends AuthState {
  String msg;

  FailureState(this.msg);
}
