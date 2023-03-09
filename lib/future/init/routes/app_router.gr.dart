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
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../../../view/categories/view/categories_view.dart' as _i5;
import '../../../view/downloaded/view/downloaded_view.dart' as _i7;
import '../../../view/home/view/home_view.dart' as _i4;
import '../../../view/home/view/movie_detail_view.dart' as _i6;
import '../../../view/main/view/main_view.dart' as _i3;
import '../../../view/more/view/more_view.dart' as _i8;
import '../../../view/onboarding/login_view.dart' as _i2;
import '../../../view/onboarding/onboarding_view.dart' as _i1;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    OnbordingRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.OnbordingPage(),
      );
    },
    LoginView.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LoginView(),
      );
    },
    MainView.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.MainView(),
      );
    },
    HomeView.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.HomeView(),
      );
    },
    CategoriesView.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.CategoriesView(),
      );
    },
    MovieDetailView.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.MovieDetailView(),
      );
    },
    DownloadedView.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.DownloadedView(),
      );
    },
    MoreView.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.MoreView(),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          OnbordingRoute.name,
          path: '/',
        ),
        _i9.RouteConfig(
          LoginView.name,
          path: '/login',
        ),
        _i9.RouteConfig(
          MainView.name,
          path: '/main',
        ),
        _i9.RouteConfig(
          HomeView.name,
          path: '/home',
        ),
        _i9.RouteConfig(
          CategoriesView.name,
          path: '/categories',
        ),
        _i9.RouteConfig(
          MovieDetailView.name,
          path: '/movieDetail',
        ),
        _i9.RouteConfig(
          DownloadedView.name,
          path: '/downloaded',
        ),
        _i9.RouteConfig(
          MoreView.name,
          path: '/more',
        ),
      ];
}

/// generated route for
/// [_i1.OnbordingPage]
class OnbordingRoute extends _i9.PageRouteInfo<void> {
  const OnbordingRoute()
      : super(
          OnbordingRoute.name,
          path: '/',
        );

  static const String name = 'OnbordingRoute';
}

/// generated route for
/// [_i2.LoginView]
class LoginView extends _i9.PageRouteInfo<void> {
  const LoginView()
      : super(
          LoginView.name,
          path: '/login',
        );

  static const String name = 'LoginView';
}

/// generated route for
/// [_i3.MainView]
class MainView extends _i9.PageRouteInfo<void> {
  const MainView()
      : super(
          MainView.name,
          path: '/main',
        );

  static const String name = 'MainView';
}

/// generated route for
/// [_i4.HomeView]
class HomeView extends _i9.PageRouteInfo<void> {
  const HomeView()
      : super(
          HomeView.name,
          path: '/home',
        );

  static const String name = 'HomeView';
}

/// generated route for
/// [_i5.CategoriesView]
class CategoriesView extends _i9.PageRouteInfo<void> {
  const CategoriesView()
      : super(
          CategoriesView.name,
          path: '/categories',
        );

  static const String name = 'CategoriesView';
}

/// generated route for
/// [_i6.MovieDetailView]
class MovieDetailView extends _i9.PageRouteInfo<void> {
  const MovieDetailView()
      : super(
          MovieDetailView.name,
          path: '/movieDetail',
        );

  static const String name = 'MovieDetailView';
}

/// generated route for
/// [_i7.DownloadedView]
class DownloadedView extends _i9.PageRouteInfo<void> {
  const DownloadedView()
      : super(
          DownloadedView.name,
          path: '/downloaded',
        );

  static const String name = 'DownloadedView';
}

/// generated route for
/// [_i8.MoreView]
class MoreView extends _i9.PageRouteInfo<void> {
  const MoreView()
      : super(
          MoreView.name,
          path: '/more',
        );

  static const String name = 'MoreView';
}
