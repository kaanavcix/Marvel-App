import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
      required this.surnameController})
      : super(const RegisterState.initial(
            state: RegisterEnum.initial,
            isShow: false,
            isValid: false,
            isLoading: false));

  List<int> steps = [1];
  List<PaymentModel> payment = [PaymentModel()];
  void changeVisiblity() => emit(state.copyWith(isShow: state.isShow!));

  TextEditingController emailController;
  TextEditingController nameController;
  TextEditingController surnameController;
  TextEditingController creditNumberController;
  TextEditingController dateController;
  TextEditingController cvvController;

  Future<void> registerControl() async {
    Future.delayed(const Duration(seconds: 1));
    emit(state.copyWith(
        state: RegisterEnum.payment, isWhich: null, pins: steps, index: 1));
  }

  void selectedOkey(PaymentModel model) {
    payment[0].payment_id == null ? payment.removeAt(0) : null;
    payment.add(model);
    emit(state.copyWith(
      isWhich: model.payment_id,
    ));
  }

  void contiuneButton() {
    steps.add(steps.last + 1);

    print(state.index);
    print(steps);

    if (payment[0].payment_id == null) {}

    if (state.index == 4) {
       changeLoading();
      emit(state.copyWith(state: RegisterEnum.completed));
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
      emit(state.copyWith(
        state: RegisterEnum.completed,
      ));
    }
  }
}
