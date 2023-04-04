import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../model/user_model.dart';

class DatabaseService {
  DatabaseService(
      {required FirebaseFirestore fireStore, required FirebaseAuth auth})
      : _firebasefirestore = fireStore,
        _auth = auth;

  final String _collectionPath = "users";
  final FirebaseFirestore _firebasefirestore;
  final FirebaseAuth _auth;

  Future<void> 
  setCurrentUser({required UserModel userModel}) async {
    try {
      _firebasefirestore
          .collection(_collectionPath)
          .doc(userModel.uid)
          .set(userModel.toMap(), SetOptions(merge: true));
    } on FirebaseException catch (e) {
      Exception(e.message);
    }
  }

  Future<void> setProfilePhoto({String? path}) async {
    try {
      if (path != null) {
        Map<String, dynamic> data = {"imagePath": path.toString()};

        _firebasefirestore
            .collection(_collectionPath)
            .doc(_auth.currentUser!.uid)
            .set(data, SetOptions(merge: true));
      } else {
        print("proccess not completed");
      }
    } on FirebaseException catch (e) {
      Exception(e.message);
    }
  }

  Future<UserModel?> getCurrentProfile() async {
    try {
      var res = await _firebasefirestore
          .collection(_collectionPath)
          .doc(_auth.currentUser!.uid)
          .get();

      if (res.data() != null) {
        return UserModel.fromMap(res.data()!);
      }
    } on FirebaseAuthException catch (e) {
      Exception(e.message);
    }
     
  }
}
