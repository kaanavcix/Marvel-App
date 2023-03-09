import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_state.dart';
part 'onboarding_cubit.freezed.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit(this.pageController)
      : super(const OnboardingState.initial(0, state: AppStateEnum.inital));

  PageController pageController;

  int selectedIndexs = 0;

  changePage(int index) {
    selectedIndexs = index;
    print(selectedIndexs);
    emit(state.copyWith(selectedIndex: index));
  }
}
