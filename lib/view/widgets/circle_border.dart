import 'package:flutter/material.dart';
import 'package:marvelapp/future/init/extension/color_extension.dart';

class CircleBorderr extends StatelessWidget {
  CircleBorderr({
    Key? key,
    required this.size,
    required this.opacity,
  }) : super(key: key);

  final double size;
  final double opacity;
  String? url;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              width: 1, color: context.getPrimaryColor().withOpacity(opacity))),
    );
  }
}
