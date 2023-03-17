import 'package:flutter/material.dart';
import 'package:marvelapp/future/init/extension/color_extension.dart';
import 'package:marvelapp/future/init/extension/mediaquery_extension.dart';
import 'package:marvelapp/future/init/extension/text_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvelapp/view/categories/cubit/categories_cubit.dart';

import '../../widgets/toggle_buttons.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: BlocBuilder<CategoriesCubit, CategoriesState>(
              // buildWhen: ,
              builder: (context, state) {
            return MarvelToggleButtons(
              index: state.index,
              text: "Movies",
              text1: "Series",
              onTap: () => context.read<CategoriesCubit>().changeIndex(0),
              onTap1: () => context.read<CategoriesCubit>().changeIndex(1),
            );
          }),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    topBar(context, true, "Newest"),
                    topBar(context, false, "Oldest"),
                    topBar(context, false, "Top"),
                    topBar(context, false, "Order"),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 19,
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, crossAxisSpacing: 8, mainAxisSpacing: 8),
                itemBuilder: (context, index) {
                  return Container(
                      height: 160, width: 102, color: Colors.green);
                },
                itemCount: 29,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget topBar(BuildContext context, bool isSelected, String text,
          {void Function()? onTap}) =>
      GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? Colors.white : null,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(80),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
            child: Text(
              text,
              style: context.getTextTheme().labelMedium!.copyWith(
                  color: isSelected ? Colors.black : Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 15),
            ),
          ),
        ),
      );
}
