import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvelapp/future/service/model/user_model.dart';
import 'package:marvelapp/view/onboarding/model/payment_model.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(
      {required this.nameController,
      required this.cvvController,
      required this.dateController,
      required this.creditNumberController,
      required this.emailController,
      required this.passwordController,
      required this.surnameController})
      : super(RegisterState.initial(
            state: RegisterEnum.initial,
            isShow: false,
            isValid: false,
            isLoading: false,
            userModel: UserModel())) {
    print("Register cubit is working");
  }

  TextEditingController emailController;
  TextEditingController passwordController;
  TextEditingController nameController;
  TextEditingController surnameController;
  TextEditingController creditNumberController;
  TextEditingController dateController;
  TextEditingController cvvController;
  bool isVisible = false;
  UserModel userModel = UserModel(
    uid: null,
  );
  List<int> steps = [1];
  List<PaymentModel> payment = [PaymentModel()];
  void changeVisibility() {
    isVisible = !isVisible;
    emit(state.copyWith(isShow: isVisible));
  }

  Future<void> registerControl() async {
    emit(state.copyWith(
      state: RegisterEnum.payment,
      isWhich: null,
      pins: steps,
      index: 1,
    ));
  }

  void isSelected(PaymentModel model) {
    payment[0].payment_id == null ? payment.removeAt(0) : null;
    payment.add(model);
    emit(state.copyWith(
      isWhich: model.payment_id,
    ));
  }

  void contiuneButton() {
    if (steps.last != 4) {
      steps.add(steps.last + 1);
    }

    if (payment[0].payment_id == null) {}

    if (state.index == 4) {
      print(
          nameController.text + emailController.text + passwordController.text);
      changeLoading();
      emit(state.copyWith(
          state: RegisterEnum.completed,
          userModel: userModel.copyWith(
              imagePath: "/",
              name: nameController.text,
              phoneNumber: "not need to",
              email: emailController.text,
              password: passwordController.text,
              userName: "${nameController.text} ${surnameController.text}",
              whichPackage:
                  "${payment[0].payment_name} ${payment[0].payment_price}")));

      if (state.state == RegisterEnum.completed) {
        nameController.clear();
        surnameController.clear();
        cvvController.clear();
        creditNumberController.clear();
        dateController.clear();
        isVisible = false;
        emailController.clear();
        passwordController.clear();
        payment.removeRange(1, payment.length - 1);
        
      }
    }

    if (steps.last == 3) {
      emit(state.copyWith(
        isWhich: 1,
        index: steps.last + 1,
        state: RegisterEnum.pin,
      ));
    }
    emit(state.copyWith(isWhich: null, pins: steps, index: steps.last));
  }

  void changeLoading() => emit(
      state.copyWith(isLoading: state.isLoading!, state: RegisterEnum.loading));

  Future<void> completeControl(String pin) async {
    if (pin.length == 4) {
      changeLoading();
    }
  }
}
