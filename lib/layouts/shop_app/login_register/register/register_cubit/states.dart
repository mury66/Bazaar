abstract class RegisterStates {}

class RegisterInitialState extends RegisterStates{}
class RegisterLoadingState extends RegisterStates{}
class RegisterSuccessState extends RegisterStates{
  final LoginModel;
  RegisterSuccessState(this.LoginModel);
}
class RegisterErrorState extends RegisterStates {
  final String error;
  RegisterErrorState(this.error);
}

class RegisterChangePasswordVisibility extends RegisterStates{}
