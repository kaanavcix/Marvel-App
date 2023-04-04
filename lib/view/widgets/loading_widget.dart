import 'package:flutter/material.dart';
import 'package:marvelapp/future/init/extension/color_extension.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: context.getPrimaryColor(),
      ),
    );
  }
}