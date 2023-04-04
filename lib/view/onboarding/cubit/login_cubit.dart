import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvelapp/cubit/app_cubit.dart';
import 'package:marvelapp/future/service/firebase/auth_repository.dart';

import '../../../future/service/model/user_model.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(
      {required this.emailController,
      required this.passwordController,
      required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const LoginState.initial(
            state: LoginStateEnum.initial,
            isValidate: false,
            isVisible: false));

  TextEditingController emailController;
  TextEditingController passwordController;
  final AuthRepository _authRepository;

  bool isVisible = false;

  void changeVisible() {
    isVisible = !isVisible;

    emit(state.copyWith(isVisible: isVisible));
  }

  Future<void> loginControl() async {
    var credentials = await _authRepository.signIn(
        email: emailController.text, password: passwordController.text);

    if (credentials != null) {
      emit(state.copyWith(state: LoginStateEnum.completed));
    }
  }
}
