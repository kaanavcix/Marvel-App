part of 'onboarding_cubit.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial( int selectedIndex,
  
  {
   
    required AppStateEnum state
  }  ) = _Initial;
}


enum AppStateEnum{
inital,loading,loaded,finished,complete,error
}
