import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'downloaded_state.dart';
part 'downloaded_cubit.freezed.dart';

class DownloadedCubit extends Cubit<DownloadedState> {
  DownloadedCubit()
      : super(const DownloadedState.initial(
          status: DownloadedStatus.inital(),
          index: 0,
        )) {
    fetchData();
  }

  void changeIndex(int index) {
    emit(state.copyWith(index: index));
  }

  changeLoading() =>
      emit(state.copyWith(status: DownloadedStatus.laoding(islaoding: true)));

 Future<void> fetchData() async {
    changeLoading();
    Future.delayed(Duration(seconds: 10));
    changeLoading();

    emit(state.copyWith(status: DownloadedStatus.completed(iscompleted: true)));
  }
}
