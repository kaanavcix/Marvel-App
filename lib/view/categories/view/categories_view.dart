import 'package:flutter/material.dart';
import 'package:marvelapp/future/init/extension/color_extension.dart';
import 'package:marvelapp/future/init/extension/mediaquery_extension.dart';
import 'package:marvelapp/future/init/extension/text_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvelapp/view/categories/cubit/categories_cubit.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          BlocBuilder<CategoriesCubit, CategoriesState>(
            // buildWhen: ,
            builder: (context, state) => SizedBox(
                height: 40,
                width: context.getWidth(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    tabButton(
                        context,
                        "Movies",
                        state,
                        () => context.read<CategoriesCubit>().changeIndex(0),
                        0),
                    tabButton(context, "Series", state,
                        () => context.read<CategoriesCubit>().changeIndex(1), 1)
                  ],
                )),
          ),

          SizedBox(height: 30,
          child: Row(
            children: [],
          )
          ,)
        ],
      ),
    );
  }

  Widget tabButton(BuildContext context, String text, CategoriesState state,
      void Function()? onTap, int index) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: context.getWidth() * 0.5,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: state.index == index ? context.getPrimaryColor() : null,
            border: state.index != index
                ? Border.all(width: 1, color: context.getPrimaryColor())
                : null),
        child: Center(
            child: Text(
          text,
          style: context.getTextTheme().bodyLarge!.copyWith(
              fontSize: 18,
              fontWeight:
                  FontWeight.lerp(FontWeight.w900, FontWeight.bold, 2.0)),
        )),
      ),
    );
  }
}
