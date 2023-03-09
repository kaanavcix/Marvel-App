import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'more_state.dart';
part 'more_cubit.freezed.dart';

class MoreCubit extends Cubit<MoreState> {
  MoreCubit() : super(MoreState.initial());
}
