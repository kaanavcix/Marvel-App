import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvelapp/future/service/firebase/database_service.dart';

import 'cubit/app_cubit.dart';
import 'future/init/routes/app_router.gr.dart';
import 'future/init/theme/dark_theme.dart';
import 'future/service/firebase/auth_repository.dart';
import 'future/service/firebase/auth_service.dart';
import 'view/onboarding/cubit/login_cubit.dart';
import 'view/onboarding/cubit/onboarding_cubit.dart';
import 'view/onboarding/cubit/register_cubit.dart';

class MarvelApp extends StatelessWidget {
  const MarvelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => OnboardingCubit(PageController()),
      ),
      BlocProvider(
        create: (context) => LoginCubit(
          emailController: TextEditingController(),
          passwordController: TextEditingController(),
          authRepository: AuthRepository(
              databaseService: DatabaseService(
                  auth: FirebaseAuth.instance,
                  fireStore: FirebaseFirestore.instance),
              authService: AuthService(firebaseAuth: FirebaseAuth.instance)),
        ),
      ),
      RepositoryProvider(
        create: (context) => AuthRepository(
            databaseService: DatabaseService(
                auth: FirebaseAuth.instance,
                fireStore: FirebaseFirestore.instance),
            authService: AuthService(firebaseAuth: FirebaseAuth.instance)),
      ),
      BlocProvider(
        create: (context) => RegisterCubit(
          passwordController: TextEditingController(),
          creditNumberController: TextEditingController(),
          cvvController: TextEditingController(),
          dateController: TextEditingController(),
          emailController: TextEditingController(),
          nameController: TextEditingController(),
          surnameController: TextEditingController(),
        ),
      ),
    ], child: const MarvelAppWrapper());
  }
}

class MarvelAppWrapper extends StatefulWidget {
  const MarvelAppWrapper({
    super.key,
  });

  @override
  State<MarvelAppWrapper> createState() => _MarvelAppWrapperState();
}

class _MarvelAppWrapperState extends State<MarvelAppWrapper> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    var state = context.watch<AppCubit>().state;

    return MaterialApp.router(
      routerDelegate: AutoRouterDelegate.declarative(
        _appRouter,
        routes: (handler) => [
          if (state.state == AppStateEnum.inital)
            OnboardingViewRoute()
          else if (state.state == AppStateEnum.login)
            LoginViewRoute()
          else if (state.state == AppStateEnum.signIn)
            MainViewRoute()
        ],
      ),
      routeInformationParser:
          _appRouter.defaultRouteParser(includePrefixMatches: true),
      darkTheme: darkTheme,
      title: "Marvel",
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
    );
  }
}
