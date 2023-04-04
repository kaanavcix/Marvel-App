import 'package:firebase_auth/firebase_auth.dart';
import 'package:marvelapp/future/service/model/user_model.dart';

class AuthService {
  AuthService({required FirebaseAuth firebaseAuth})
      : _firebaseAuth = firebaseAuth;

  FirebaseAuth _firebaseAuth;

  Stream<UserModel> getCurrentUser() {
    return _firebaseAuth.authStateChanges().map((user) {
      if (user != null) {
        return UserModel(uid: user.uid);
      } else {
        return UserModel();
      }
    });
  }

  Future<UserCredential?> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);

      return userCredential;
    } on FirebaseAuthException catch (e) {
      print(e.message);
    }
  }

  Future<UserCredential?> signUpWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      UserCredential userCredential = await _firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password);

    return userCredential;
      
    } on FirebaseAuthException catch (e) {
      print(e.message);
    }
  }

  Future<UserModel?> emailVerify() async {
    User? user = await _firebaseAuth.currentUser;

    if (user != null && user.emailVerified) {
      return UserModel(uid: user.uid);
    }
  }

  Future<void> signOut() async {
    return await _firebaseAuth.signOut();
  }
}
