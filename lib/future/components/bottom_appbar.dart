import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marvelapp/future/init/extension/color_extension.dart';
import 'package:marvelapp/future/init/extension/text_extension.dart';

import '../init/extension/image_extension.dart';

class BottomAppBarMarvel extends StatelessWidget {
  BottomAppBarMarvel({super.key, required this.index, required this.onTap,
  required this.onTap1,required this.onTap2,required this.onTap3,});

  int index;
  void Function()? onTap;
  void Function()? onTap1;
  void Function()? onTap2;
  void Function()? onTap3;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 56,
      elevation: 0,
      color: Colors.black.withOpacity(0.8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          iconButton(context, SvgEnum.home, "Home", index == 0, onTap),
          iconButton(
              context, SvgEnum.categories, "Categories", index == 1, onTap1),
          iconButton(
              context, SvgEnum.downloads, "Downloads", index == 2, onTap2),
          iconButton(context, SvgEnum.more, "More", index == 3, onTap3),
        ],
      ),
    );
  }

  Widget iconButton(BuildContext context, SvgEnum name, String title,
      bool isSelected, void Function()? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          SvgPicture.asset(
            name.pathTo(),
            color: isSelected ? context.getPrimaryColor() : Colors.white,
          ),
          Text(
            title,
            style: context.getTextTheme().labelSmall!.copyWith(
                color: isSelected ? context.getPrimaryColor() : Colors.white,
                fontWeight: FontWeight.w900),
          )
        ],
      ),
    );
  }
}
