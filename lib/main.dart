import 'package:flutter/material.dart';
import 'package:marvelapp/future/init/theme/dark_theme.dart';
import 'package:marvelapp/view/main/cubit/main_cubit.dart';
import 'package:marvelapp/view/onboarding/cubit/onboarding_cubit.dart';
import 'package:marvelapp/view/onboarding/login_view.dart';
import 'package:marvelapp/view/onboarding/onboarding_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvelapp/view/onboarding/onboarding_view.dart';

import 'future/init/routes/app_router.gr.dart';

void main() => runApp(MarvelApp());

class MarvelApp extends StatelessWidget {
  MarvelApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(PageController()),
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        darkTheme: darkTheme,
        title: "Marvel",
        themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
