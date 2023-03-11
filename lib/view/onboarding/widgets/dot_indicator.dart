import 'package:flutter/material.dart';
import 'package:marvelapp/future/init/extension/color_extension.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    required this.selectedIndex,
  });

  final bool selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 10, maxWidth: 10),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: selectedIndex ? context.getPrimaryColor() : Colors.white,
        // border: Border.all(width: 1,color: selectedIndex?Colors.transparent:Colors.white,)
      ),
    );
  }
}
