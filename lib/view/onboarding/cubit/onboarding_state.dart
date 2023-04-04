part of 'onboarding_cubit.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial( int selectedIndex,
  
  {
   
    required OnboardingStateEnum state
  }  ) = _Initial;
}


enum OnboardingStateEnum{
inital,loading,loaded,finished,complete,error
}

