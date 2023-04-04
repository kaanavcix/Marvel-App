import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvelapp/future/service/firebase/database_repository.dart';
import 'package:marvelapp/future/service/model/user_model.dart';

part 'more_state.dart';
part 'more_cubit.freezed.dart';

class MoreCubit extends Cubit<MoreState> {
  MoreCubit({required DatabaseRepository databaseRepository})
      : _databaseRepository = databaseRepository,
        super(const MoreState.initial()) {
    fetchCurrentUserData();
  }

  DatabaseRepository _databaseRepository;

  UserModel userModel = UserModel();

  Future<void> fetchCurrentUserData() async {
    emit(const MoreState.loading(isLoading: true));

    var response = await _databaseRepository.getCurrentUser();

    if (response != null) {
      userModel = response;
      print(userModel.name);
      emit(MoreState.completed(userModel: userModel));
    } else {
      emit(MoreState.error(message: "Not showing"));
    }
  }
}
