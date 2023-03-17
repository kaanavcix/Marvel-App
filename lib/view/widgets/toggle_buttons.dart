import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvelapp/future/init/extension/color_extension.dart';
import 'package:marvelapp/future/init/extension/mediaquery_extension.dart';
import 'package:marvelapp/future/init/extension/text_extension.dart';

import '../categories/cubit/categories_cubit.dart';
import '../onboarding/cubit/register_cubit.dart';

class MarvelToggleButtons extends StatelessWidget {
  MarvelToggleButtons(
      {required this.index,
      this.onTap,
      required this.text,
      required this.text1,
      this.onTap1,
      super.key});

  int index;
  String text;
  String text1;
  void Function()? onTap;
  void Function()? onTap1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 40,
        width: context.getWidth(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: onTap,
              child: Container(
                height: 40,
                width: context.getWidth() * 0.5,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: index == 0 ? context.getPrimaryColor() : null,
                    border: index != 0
                        ? Border.all(width: 1, color: context.getPrimaryColor())
                        : null),
                child: Center(
                    child: Text(
                  text,
                  style: context.getTextTheme().bodyLarge!.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.lerp(
                          FontWeight.w900, FontWeight.bold, 2.0)),
                )),
              ),
            ),
            GestureDetector(
              onTap: onTap1,
              child: Container(
                height: 40,
                width: context.getWidth() * 0.5,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: index == 1 ? context.getPrimaryColor() : null,
                    border: index != 1
                        ? Border.all(width: 1, color: context.getPrimaryColor())
                        : null),
                child: Center(
                    child: Text(
                  text1,
                  style: context.getTextTheme().bodyLarge!.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.lerp(
                          FontWeight.w900, FontWeight.bold, 2.0)),
                )),
              ),
            )
          ],
        ));
  }
}

// tabButton(context, "Movies", state,
             //   () => context.read<CategoriesCubit>().changeIndex(0), 0),
           // tabButton(context, "Series", state,
             //   () => context.read<CategoriesCubit>().changeIndex(1), 1)