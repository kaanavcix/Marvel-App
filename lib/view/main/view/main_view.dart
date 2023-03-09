import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvelapp/cubit/home_cubit.dart';
import 'package:marvelapp/future/init/extension/image_extension.dart';
import 'package:marvelapp/future/init/extension/text_extension.dart';
import 'package:marvelapp/view/categories/cubit/categories_cubit.dart';
import 'package:marvelapp/view/categories/view/categories_view.dart';
import 'package:marvelapp/view/downloaded/cubit/downloaded_cubit.dart';
import 'package:marvelapp/view/home/view/home_view.dart';
import 'package:marvelapp/view/main/cubit/main_cubit.dart';
import 'package:marvelapp/view/more/cubit/more_cubit.dart';
import 'package:marvelapp/view/more/view/more_view.dart';

import '../../../future/components/bottom_appbar.dart';
import '../../downloaded/view/downloaded_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MainCubit(),
          lazy: true,
        ),
        BlocProvider(
          create: (context) => CategoriesCubit(),
        ),
        BlocProvider(
          create: (context) => MoreCubit(),
        ),
        BlocProvider(
          create: (context) => DownloadedCubit(),
        ),
        BlocProvider(
          create: (context) => HomeCubit(),
        ) //RepositoryProvider(create: create)
      ],
      child: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  MainPage({super.key});
  List<Widget> screens = [
    HomeView(),
    CategoriesView(),
    DownloadedView(),
    MoreView()
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        return Scaffold(
            extendBody: true,
            body: screens[state.index],
            bottomNavigationBar: BottomAppBarMarvel(
              index: state.index,
              onTap: () => context.read<MainCubit>().changeIndex(0),
              onTap1: () => context.read<MainCubit>().changeIndex(1),
              onTap2: () => context.read<MainCubit>().changeIndex(2),
              onTap3: () => context.read<MainCubit>().changeIndex(3),
            ));
      },
    );
  }
}
