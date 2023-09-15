abstract class LoginStates {}

class LoginInitialState extends LoginStates{}
class LoginLoadingState extends LoginStates{}
class LoginSuccessState extends LoginStates{
  final LoginModel;
  LoginSuccessState(this.LoginModel);
}
class LoginErrorState extends LoginStates {
  final String error;
  LoginErrorState(this.error);
}

class LoginChangePasswordVisibility extends LoginStates{}
