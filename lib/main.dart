import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:marvelapp/cubit/app_cubit.dart';

import 'package:marvelapp/future/service/firebase/auth_repository.dart';
import 'package:marvelapp/future/service/firebase/auth_service.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'firebase_options.dart';
import 'future/service/firebase/database_service.dart';
import 'marvel_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

  runApp(BlocProvider(
    lazy: false,
    create: (context) => AppCubit(
      authRepository: AuthRepository(
          databaseService: DatabaseService(
              auth: FirebaseAuth.instance,
              fireStore: FirebaseFirestore.instance),
          authService: AuthService(firebaseAuth: FirebaseAuth.instance)),
      sharedPreferences: sharedPreferences,
    )..getBool(),
    child: MarvelApp(),
  ));
}
