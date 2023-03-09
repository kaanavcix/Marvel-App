import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState.initial(AppStateEnum.inital));

  changePage() {
    state.copyWith(state: AppStateEnum.complete);
  }
}
