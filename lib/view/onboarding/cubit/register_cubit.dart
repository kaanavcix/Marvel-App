import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvelapp/view/onboarding/model/payment_model.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit()
      : super(const RegisterState.initial(
            state: RegisterEnum.initial,
            isShow: false,
            isValid: false,
            isLoading: false)) {
    print(steps);
  }

  List<int> steps = [1];
  PaymentModel payment = PaymentModel();
  void changeVisiblity() {
    emit(state.copyWith(isShow: state.isShow!));
  }

  Future<void> registerControl() async {
    Future.delayed(const Duration(seconds: 1));
    emit(state.copyWith(
        state: RegisterEnum.payment,
        isWhich: null,
        pins: steps,
        index: 0));
  }

  void selectedOkey(PaymentModel model) {
    payment = model;
    emit(state.copyWith(
      isWhich: payment.payment_id,
    ));
  }

  void contiuneButton() {
    steps.add(steps.last + 1);
    print(steps);
    emit(state.copyWith(isWhich: null, pins: steps, index: steps.last));
  }

  void changeLoading() => emit(state.copyWith(isLoading: state.isLoading!));
}
