import 'package:auto_route/annotations.dart';
import 'package:flutter/foundation.dart';
import 'package:marvelapp/view/downloaded/view/downloaded_view.dart';
import 'package:marvelapp/view/home/view/home_view.dart';
import 'package:marvelapp/view/home/view/movie_detail_view.dart';
import 'package:marvelapp/view/onboarding/login_view.dart';
import 'package:marvelapp/view/onboarding/onboarding_view.dart';

import '../../../view/categories/view/categories_view.dart';
import '../../../view/main/view/main_view.dart';
import '../../../view/more/view/account_view.dart';
import '../../../view/more/view/more_view.dart';
import '../../../view/more/view/settings_view.dart';
import '../../../view/onboarding/payment_view.dart';
import '../../../view/onboarding/register_view.dart';

@AdaptiveAutoRouter(              
  routes: <AutoRoute>[        
    AutoRoute(page: RegisterView,path: "/register",initial:true),
    AutoRoute(page: PaymentView,path: "/payment")      ,
   AutoRoute(page: OnboardingView ,path: "/"),
    AutoRoute(page: LoginView,path: "/login",initial:true)      ,
    AutoRoute(page: MainView,),
        AutoRoute(page: HomeView,path: "/home"),

    AutoRoute(page: CategoriesView,path: "/categories",
     ),AutoRoute(page: MovieDetailView,path:"/movieDetail")  ,
     AutoRoute(page:DownloadedView,path: "/downloaded"),
     AutoRoute(page: MoreView,path: "/more")    ,
     AutoRoute(page: SettingsView, path: "/settings"),
     AutoRoute(page:AccountView, path: "/account") ,
   
  ],              
)              
class $AppRouter {}  