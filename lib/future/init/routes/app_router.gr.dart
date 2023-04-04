// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/foundation.dart' as _i15;
import 'package:flutter/material.dart' as _i14;
import 'package:marvelapp/future/service/model/comics_model.dart' as _i16;
import 'package:marvelapp/view/categories/view/categories_view.dart' as _i7;
import 'package:marvelapp/view/downloaded/view/downloaded_view.dart' as _i9;
import 'package:marvelapp/view/home/view/home_view.dart' as _i6;
import 'package:marvelapp/view/home/view/movie_detail_view.dart' as _i8;
import 'package:marvelapp/view/main/view/main_view.dart' as _i5;
import 'package:marvelapp/view/more/view/account_view.dart' as _i12;
import 'package:marvelapp/view/more/view/more_view.dart' as _i10;
import 'package:marvelapp/view/more/view/settings_view.dart' as _i11;
import 'package:marvelapp/view/onboarding/login_view.dart' as _i4;
import 'package:marvelapp/view/onboarding/onboarding_view.dart' as _i3;
import 'package:marvelapp/view/onboarding/payment_view.dart' as _i2;
import 'package:marvelapp/view/onboarding/register_view.dart' as _i1;

class AppRouter extends _i13.RootStackRouter {
  AppRouter([_i14.GlobalKey<_i14.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    RegisterViewRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.RegisterView(),
      );
    },
    PaymentViewRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.PaymentView(),
      );
    },
    OnboardingViewRoute.name: (routeData) {
      final args = routeData.argsAs<OnboardingViewRouteArgs>(
          orElse: () => const OnboardingViewRouteArgs());
      return _i13.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i3.OnboardingView(key: args.key),
      );
    },
    LoginViewRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginView(),
      );
    },
    MainViewRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.MainView(),
      );
    },
    HomeViewRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomeView(),
      );
    },
    CategoriesViewRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.CategoriesView(),
      );
    },
    MovieDetailViewRoute.name: (routeData) {
      final args = routeData.argsAs<MovieDetailViewRouteArgs>();
      return _i13.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i8.MovieDetailView(
          model: args.model,
          key: args.key,
        ),
      );
    },
    DownloadedViewRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i9.DownloadedView(),
      );
    },
    MoreViewRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i10.MoreView(),
      );
    },
    SettingsViewRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i11.SettingsView(),
      );
    },
    AccountViewRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i12.AccountView(),
      );
    },
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(
          RegisterViewRoute.name,
          path: '/register',
        ),
        _i13.RouteConfig(
          PaymentViewRoute.name,
          path: '/payment',
        ),
        _i13.RouteConfig(
          OnboardingViewRoute.name,
          path: '/',
        ),
        _i13.RouteConfig(
          LoginViewRoute.name,
          path: '/login',
        ),
        _i13.RouteConfig(
          MainViewRoute.name,
          path: '/main-view',
        ),
        _i13.RouteConfig(
          HomeViewRoute.name,
          path: '/home',
        ),
        _i13.RouteConfig(
          CategoriesViewRoute.name,
          path: '/categories',
        ),
        _i13.RouteConfig(
          MovieDetailViewRoute.name,
          path: '/movieDetail',
        ),
        _i13.RouteConfig(
          DownloadedViewRoute.name,
          path: '/downloaded',
        ),
        _i13.RouteConfig(
          MoreViewRoute.name,
          path: '/more',
        ),
        _i13.RouteConfig(
          SettingsViewRoute.name,
          path: '/settings',
        ),
        _i13.RouteConfig(
          AccountViewRoute.name,
          path: '/account',
        ),
      ];
}

/// generated route for
/// [_i1.RegisterView]
class RegisterViewRoute extends _i13.PageRouteInfo<void> {
  const RegisterViewRoute()
      : super(
          RegisterViewRoute.name,
          path: '/register',
        );

  static const String name = 'RegisterViewRoute';
}

/// generated route for
/// [_i2.PaymentView]
class PaymentViewRoute extends _i13.PageRouteInfo<void> {
  const PaymentViewRoute()
      : super(
          PaymentViewRoute.name,
          path: '/payment',
        );

  static const String name = 'PaymentViewRoute';
}

/// generated route for
/// [_i3.OnboardingView]
class OnboardingViewRoute extends _i13.PageRouteInfo<OnboardingViewRouteArgs> {
  OnboardingViewRoute({_i15.Key? key})
      : super(
          OnboardingViewRoute.name,
          path: '/',
          args: OnboardingViewRouteArgs(key: key),
        );

  static const String name = 'OnboardingViewRoute';
}

class OnboardingViewRouteArgs {
  const OnboardingViewRouteArgs({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return 'OnboardingViewRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.LoginView]
class LoginViewRoute extends _i13.PageRouteInfo<void> {
  const LoginViewRoute()
      : super(
          LoginViewRoute.name,
          path: '/login',
        );

  static const String name = 'LoginViewRoute';
}

/// generated route for
/// [_i5.MainView]
class MainViewRoute extends _i13.PageRouteInfo<void> {
  const MainViewRoute()
      : super(
          MainViewRoute.name,
          path: '/main-view',
        );

  static const String name = 'MainViewRoute';
}

/// generated route for
/// [_i6.HomeView]
class HomeViewRoute extends _i13.PageRouteInfo<void> {
  const HomeViewRoute()
      : super(
          HomeViewRoute.name,
          path: '/home',
        );

  static const String name = 'HomeViewRoute';
}

/// generated route for
/// [_i7.CategoriesView]
class CategoriesViewRoute extends _i13.PageRouteInfo<void> {
  const CategoriesViewRoute()
      : super(
          CategoriesViewRoute.name,
          path: '/categories',
        );

  static const String name = 'CategoriesViewRoute';
}

/// generated route for
/// [_i8.MovieDetailView]
class MovieDetailViewRoute
    extends _i13.PageRouteInfo<MovieDetailViewRouteArgs> {
  MovieDetailViewRoute({
    required _i16.Results model,
    _i15.Key? key,
  }) : super(
          MovieDetailViewRoute.name,
          path: '/movieDetail',
          args: MovieDetailViewRouteArgs(
            model: model,
            key: key,
          ),
        );

  static const String name = 'MovieDetailViewRoute';
}

class MovieDetailViewRouteArgs {
  const MovieDetailViewRouteArgs({
    required this.model,
    this.key,
  });

  final _i16.Results model;

  final _i15.Key? key;

  @override
  String toString() {
    return 'MovieDetailViewRouteArgs{model: $model, key: $key}';
  }
}

/// generated route for
/// [_i9.DownloadedView]
class DownloadedViewRoute extends _i13.PageRouteInfo<void> {
  const DownloadedViewRoute()
      : super(
          DownloadedViewRoute.name,
          path: '/downloaded',
        );

  static const String name = 'DownloadedViewRoute';
}

/// generated route for
/// [_i10.MoreView]
class MoreViewRoute extends _i13.PageRouteInfo<void> {
  const MoreViewRoute()
      : super(
          MoreViewRoute.name,
          path: '/more',
        );

  static const String name = 'MoreViewRoute';
}

/// generated route for
/// [_i11.SettingsView]
class SettingsViewRoute extends _i13.PageRouteInfo<void> {
  const SettingsViewRoute()
      : super(
          SettingsViewRoute.name,
          path: '/settings',
        );

  static const String name = 'SettingsViewRoute';
}

/// generated route for
/// [_i12.AccountView]
class AccountViewRoute extends _i13.PageRouteInfo<void> {
  const AccountViewRoute()
      : super(
          AccountViewRoute.name,
          path: '/account',
        );

  static const String name = 'AccountViewRoute';
}
