import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvelapp/future/service/firebase/auth_repository.dart';
import 'package:marvelapp/future/service/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit(
      {required AuthRepository authRepository,
      required SharedPreferences sharedPreferences})
      : _authRepository = authRepository,
        _sharedPreferences = sharedPreferences,
        super(const AppState.state(null)) {
    getBool();
    userChanges().listen((user) async {
      if (isFirstTime ??true) {
        emit(state.copyWith(state: AppStateEnum.inital));
        await _sharedPreferences.setBool(key, false);
        isFirstTime = !isFirstTime!;
        
      
      }
   else   if (user!.uid != null) {
        emit(state.copyWith(state: AppStateEnum.signIn));
      }
    else  if (user.uid == null) {
        emit(state.copyWith(state: AppStateEnum.login));
      }
    });
  }

  final AuthRepository _authRepository;
  var key = "isFirstTime";

  bool? isFirstTime;
  late final SharedPreferences _sharedPreferences;

  Future<void> getBool() async {
    if (_sharedPreferences.getBool(key) == null) {
      await _sharedPreferences.setBool(key, true);
      print(_sharedPreferences.getBool(key));

      isFirstTime = _sharedPreferences.getBool(key)!;
    } else {
        isFirstTime = _sharedPreferences.getBool(key)!;
     // isFirstTime = true;
    }
  }

  void signOut() {
    _authRepository.signOut();
    emit(state.copyWith(state: AppStateEnum.login));
  }

  void login() {
    emit(state.copyWith(state: AppStateEnum.signIn));
  }

  Stream<UserModel?> userChanges() {
    return _authRepository.getCurrentUser();
  }



  
}
