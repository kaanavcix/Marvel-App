part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial(
      {required LoginStateEnum state,
      bool? isValidate,
      bool? isVisible}) = _Initial;
}


enum LoginStateEnum{

  initial,
  error,
  failure,
  completed
  
}