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
    super.key,
  });

  TextEditingController? textEditingController;
  String? suffixText;
  String? hintText;
  bool? isVisible;
  void Function()? onTap;
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
          suffix: suffixText == null ? null : GestureDetector(onTap:  onTap,child: Text(suffixText ?? "")),
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
