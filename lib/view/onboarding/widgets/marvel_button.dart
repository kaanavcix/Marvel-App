import 'package:flutter/material.dart';
import 'package:marvelapp/future/init/extension/color_extension.dart';
import 'package:marvelapp/future/init/extension/mediaquery_extension.dart';
import 'package:marvelapp/future/init/extension/text_extension.dart';
import 'package:marvelapp/view/onboarding/cubit/register_cubit.dart';

class MarvelButton extends StatelessWidget {
  MarvelButton(this.state,{super.key, this.onTap, required this.text, this.isSelected,});

  void Function()? onTap;
  String text;
  bool? isSelected;
  RegisterState? state;
  @override
  Widget build(BuildContext context) {
    const edgeInsets = EdgeInsets.symmetric(vertical: 8.0);
    const edgeInsets2 = EdgeInsets.symmetric(horizontal: 20);
    return Padding(
      padding: edgeInsets,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50,
          width: context.getWidth(),
          decoration: BoxDecoration(
              color: isSelected ?? false ? context.getPrimaryColor() : null,
              border: Border.all(width: 3, color: context.getPrimaryColor())),
          margin: edgeInsets2,
          child: Center(
              child: state?.isLoading ?? false ? const CircularProgressIndicator(color: Colors.white,) :  Text(
            text,
            style: context
                .getTextTheme()
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold, fontSize: 18),
          )),
        ),
      ),
    );
  }
}
