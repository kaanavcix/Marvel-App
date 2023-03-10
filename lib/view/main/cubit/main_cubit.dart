import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_state.dart';
part 'main_cubit.freezed.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainState.initial(index: 0));

  changeIndex(int index) {
    emit(state.copyWith(index: index));
  }
}
