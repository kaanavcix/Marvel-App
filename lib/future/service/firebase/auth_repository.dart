import 'package:firebase_auth/firebase_auth.dart';
import 'package:marvelapp/future/service/firebase/auth_service.dart';

import '../model/user_model.dart';
import 'database_service.dart';

class AuthRepository implements IAuthRepository {
  AuthRepository(
      {required AuthService authService,
      required DatabaseService databaseService})
      : _service = authService,
        _databaseService = databaseService;
  AuthService _service;
  DatabaseService _databaseService;
  @override
  Future<UserModel?> emailVerified() async {
    return await _service.emailVerify();
  }

  @override
  Stream<UserModel?> getCurrentUser() {
    return _service.getCurrentUser();
  }

  @override
  Future<UserCredential?> signIn(
      {required String email, required String password}) async {
    return await _service.signInWithEmailAndPassword(
        email: email, password: password);
  }

  @override
  Future<void> signOut() async {
    return await _service.signOut();
  }

  @override
  Future<UserCredential?> signUp(UserModel userModel) async {
    print(userModel.toString());
    UserCredential? userCredential = await _service.signUpWithEmailAndPassword(
        email: userModel.email!, password: userModel.password!);

    await _databaseService.setCurrentUser(
        userModel: userModel.copyWith(uid: userCredential!.user!.uid));

    return userCredential;
  }
}

abstract class IAuthRepository {
  Stream<UserModel?> getCurrentUser();

  Future<UserCredential?> signIn(
      {required String email, required String password});
  Future<UserCredential?> signUp(UserModel userModel);

  Future<UserModel?> emailVerified();
  Future<void> signOut();
}
