part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({required HomeStatus state}) = _Initial;
}

@freezed
class HomeStatus with _$HomeStatus {
  const factory HomeStatus.initiall() = _Initiall;
  const factory HomeStatus.loading({required bool state}) = _Loading;
  const factory HomeStatus.error({required String message}) = _Error;
  const factory HomeStatus.completed(
      {required List<Results> model,
      required List<String> images,  required List<Resultss> series}) = _Completed;
}
