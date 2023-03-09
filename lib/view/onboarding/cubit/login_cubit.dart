import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvelapp/cubit/app_cubit.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit()
      : super(const LoginState.initial(
            state: LoginStateEnum.initial,
            isValidate: false,
            isVisible: false));

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isVisibles = false;

  void changeVisible() {
    isVisibles = !isVisibles;

    emit(state.copyWith(isVisible: isVisibles));
  }

  Future<void> loginControl() async {
    Future.delayed(Duration(seconds: 1));

    emit(state.copyWith(state: LoginStateEnum.completed));
  }
}
