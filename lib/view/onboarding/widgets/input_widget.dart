import 'package:flutter/material.dart';
import 'package:marvelapp/future/init/extension/mediaquery_extension.dart';
import 'package:marvelapp/future/init/extension/text_extension.dart';

class InputWidget extends StatelessWidget {
  InputWidget({
    this.textEditingController,
    this.suffixText,
    this.hintText,
    this.isVisible,
    this.onTap,
    this.isPayment,
    this.widget,
    super.key,
  });

  TextEditingController? textEditingController;
  String? suffixText;
  String? hintText;
  bool? isVisible;
  bool? isPayment;
  void Function()? onTap;
  Widget? widget;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isVisible ?? false,
      controller: textEditingController,
      cursorColor: Colors.black.withOpacity(0.5),
      style: context.getTextTheme().bodyMedium!.copyWith(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black.withOpacity(0.5)),
      decoration: InputDecoration(
          suffixStyle: context.getTextTheme().bodyMedium!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.7)),
          suffix: isPayment ?? true
              ? suffixText == null
                  ? null
                  : GestureDetector(onTap: onTap, child: Text(suffixText ?? ""))
              : GestureDetector(onTap: onTap, child: widget),
          hintText: hintText,
          hintStyle: context.getTextTheme().titleMedium!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.5)),
          constraints: BoxConstraints(
              maxWidth: context.getWidth() * 0.9,
              maxHeight: 50,
              minHeight: 50,
              minWidth: context.getWidth() * 0.9),
          border: InputBorder.none,
          fillColor: Colors.white,
          filled: true),
    );
  }
}



class TextBar extends StatelessWidget {
  const TextBar({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(text,
          style: context
              .getTextTheme()
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.w900, fontSize: 24)),
    );
  }
}


//TODO: TextBar widget maybe later we can change folder location