part of 'more_cubit.dart';

@freezed
class MoreState with _$MoreState {
  const factory MoreState.initial() = _Initial;
  const factory MoreState.loading({bool? isLoading}) = _Loading;
  const factory MoreState.error({String? message}) = _Error;
  const factory MoreState.completed({UserModel? userModel}) = _Completed;
}
