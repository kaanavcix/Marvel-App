part of 'downloaded_cubit.dart';

@freezed
class DownloadedState with _$DownloadedState {
  const factory DownloadedState.initial({
  required  DownloadedStatus status,
    required int index,
  }) = _Initial;
}

@freezed
class DownloadedStatus with _$DownloadedStatus {
  const factory DownloadedStatus.inital() = _Inital;
  const factory DownloadedStatus.laoding({bool? islaoding}) = _Laoding;
  const factory DownloadedStatus.completed({bool? iscompleted}) = _Completed;
}
