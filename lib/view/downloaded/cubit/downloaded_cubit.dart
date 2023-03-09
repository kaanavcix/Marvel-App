import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'downloaded_state.dart';
part 'downloaded_cubit.freezed.dart';

class DownloadedCubit extends Cubit<DownloadedState> {
  DownloadedCubit() : super(DownloadedState.initial());
}
