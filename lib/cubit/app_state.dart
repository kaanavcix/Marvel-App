part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.state(AppStateEnum? state) = _State;
}

enum AppStateEnum { inital, signIn, login }
