part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial(AppStateEnum? state) = _Initial;
  const factory AppState.finaled( AppStateEnum? state)  = _Finaled;
}





enum AppStateEnum{
inital,loading,loaded,finished,complete,error
}


