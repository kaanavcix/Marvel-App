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
import 'package:flutter/material.dart' as _i14;

import '../../../view/categories/view/categories_view.dart' as _i7;
import '../../../view/downloaded/view/downloaded_view.dart' as _i9;
import '../../../view/home/view/home_view.dart' as _i6;
import '../../../view/home/view/movie_detail_view.dart' as _i8;
import '../../../view/main/view/main_view.dart' as _i5;
import '../../../view/more/view/account_view.dart' as _i12;
import '../../../view/more/view/more_view.dart' as _i10;
import '../../../view/more/view/settings_view.dart' as _i11;
import '../../../view/onboarding/login_view.dart' as _i4;
import '../../../view/onboarding/onboarding_view.dart' as _i3;
import '../../../view/onboarding/payment_view.dart' as _i2;
import '../../../view/onboarding/register_view.dart' as _i1;

class AppRouter extends _i13.RootStackRouter {
  AppRouter([_i14.GlobalKey<_i14.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    RegisterView.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.RegisterView(),
      );
    },
    PaymentView.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.PaymentView(),
      );
    },
    OnbordingRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.OnbordingPage(),
      );
    },
    LoginView.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.LoginView(),
      );
    },
    MainView.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.MainView(),
      );
    },
    HomeView.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.HomeView(),
      );
    },
    CategoriesView.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.CategoriesView(),
      );
    },
    MovieDetailView.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.MovieDetailView(),
      );
    },
    DownloadedView.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.DownloadedView(),
      );
    },
    MoreView.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.MoreView(),
      );
    },
    SettingsView.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.SettingsView(),
      );
    },
    AccountView.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.AccountView(),
      );
    },
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(
          RegisterView.name,
          path: '/register',
        ),
        _i13.RouteConfig(
          PaymentView.name,
          path: '/payment',
        ),
        _i13.RouteConfig(
          OnbordingRoute.name,
          path: '/',
        ),
        _i13.RouteConfig(
          LoginView.name,
          path: '/login',
        ),
        _i13.RouteConfig(
          MainView.name,
          path: '/main',
        ),
        _i13.RouteConfig(
          HomeView.name,
          path: '/home',
        ),
        _i13.RouteConfig(
          CategoriesView.name,
          path: '/categories',
        ),
        _i13.RouteConfig(
          MovieDetailView.name,
          path: '/movieDetail',
        ),
        _i13.RouteConfig(
          DownloadedView.name,
          path: '/downloaded',
        ),
        _i13.RouteConfig(
          MoreView.name,
          path: '/more',
        ),
        _i13.RouteConfig(
          SettingsView.name,
          path: '/settings',
        ),
        _i13.RouteConfig(
          AccountView.name,
          path: '/account',
        ),
      ];
}

/// generated route for
/// [_i1.RegisterView]
class RegisterView extends _i13.PageRouteInfo<void> {
  const RegisterView()
      : super(
          RegisterView.name,
          path: '/register',
        );

  static const String name = 'RegisterView';
}

/// generated route for
/// [_i2.PaymentView]
class PaymentView extends _i13.PageRouteInfo<void> {
  const PaymentView()
      : super(
          PaymentView.name,
          path: '/payment',
        );

  static const String name = 'PaymentView';
}

/// generated route for
/// [_i3.OnbordingPage]
class OnbordingRoute extends _i13.PageRouteInfo<void> {
  const OnbordingRoute()
      : super(
          OnbordingRoute.name,
          path: '/',
        );

  static const String name = 'OnbordingRoute';
}

/// generated route for
/// [_i4.LoginView]
class LoginView extends _i13.PageRouteInfo<void> {
  const LoginView()
      : super(
          LoginView.name,
          path: '/login',
        );

  static const String name = 'LoginView';
}

/// generated route for
/// [_i5.MainView]
class MainView extends _i13.PageRouteInfo<void> {
  const MainView()
      : super(
          MainView.name,
          path: '/main',
        );

  static const String name = 'MainView';
}

/// generated route for
/// [_i6.HomeView]
class HomeView extends _i13.PageRouteInfo<void> {
  const HomeView()
      : super(
          HomeView.name,
          path: '/home',
        );

  static const String name = 'HomeView';
}

/// generated route for
/// [_i7.CategoriesView]
class CategoriesView extends _i13.PageRouteInfo<void> {
  const CategoriesView()
      : super(
          CategoriesView.name,
          path: '/categories',
        );

  static const String name = 'CategoriesView';
}

/// generated route for
/// [_i8.MovieDetailView]
class MovieDetailView extends _i13.PageRouteInfo<void> {
  const MovieDetailView()
      : super(
          MovieDetailView.name,
          path: '/movieDetail',
        );

  static const String name = 'MovieDetailView';
}

/// generated route for
/// [_i9.DownloadedView]
class DownloadedView extends _i13.PageRouteInfo<void> {
  const DownloadedView()
      : super(
          DownloadedView.name,
          path: '/downloaded',
        );

  static const String name = 'DownloadedView';
}

/// generated route for
/// [_i10.MoreView]
class MoreView extends _i13.PageRouteInfo<void> {
  const MoreView()
      : super(
          MoreView.name,
          path: '/more',
        );

  static const String name = 'MoreView';
}

/// generated route for
/// [_i11.SettingsView]
class SettingsView extends _i13.PageRouteInfo<void> {
  const SettingsView()
      : super(
          SettingsView.name,
          path: '/settings',
        );

  static const String name = 'SettingsView';
}

/// generated route for
/// [_i12.AccountView]
class AccountView extends _i13.PageRouteInfo<void> {
  const AccountView()
      : super(
          AccountView.name,
          path: '/account',
        );

  static const String name = 'AccountView';
}
