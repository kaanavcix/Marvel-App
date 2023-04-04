import 'package:firebase_auth/firebase_auth.dart';
import 'package:marvelapp/future/service/firebase/database_service.dart';

import '../model/user_model.dart';

class DatabaseRepository implements IDatabaseRepository {
  DatabaseRepository({required DatabaseService databaseService})
      : _databaseService = databaseService;

  final DatabaseService _databaseService;

  @override
  Future<UserModel?> getCurrentUser() {
    return _databaseService.getCurrentProfile();
  }

  @override
  Future<void> setProfilePhoto({String? path}) {
    return _databaseService.setProfilePhoto(path: path);
  }

  @override
  Future<void> setUserData({UserModel? userModel}) {
    return _databaseService.setCurrentUser(userModel: userModel!);
  }
}

abstract class IDatabaseRepository {
  Future<UserModel?> getCurrentUser();
  Future<void> setUserData({UserModel? userModel});
  Future<void> setProfilePhoto();
}
