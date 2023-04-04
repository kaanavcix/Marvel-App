import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_state.dart';
part 'categories_cubit.freezed.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit() : super(CategoriesState.initial(index: 0));

  int index = 0;
  changeIndex(int index) {
    this.index = index;
    emit(state.copyWith(index: index));
  }
}
