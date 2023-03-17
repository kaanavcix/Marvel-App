import 'package:flutter/material.dart';
import 'package:marvelapp/future/init/extension/color_extension.dart';

import 'circle_border.dart';

class ProfileStack extends StatelessWidget {
  const ProfileStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleBorderr(size: 70, opacity: 0.1),
        CircleBorderr(size: 67, opacity: 0.2),
        CircleBorderr(size: 64, opacity: 0.4),
        CircleBorderr(size: 61, opacity: 0.6),
        CircleBorderr(size: 59, opacity: 0.8),
        CircleBorderr(size: 56, opacity: 1),
        const CircleAvatar(
          foregroundImage: AssetImage("assets/images/ellipse15.png"),
          radius: 26.5,
          backgroundColor: Colors.black,
        )
      ],
    );
  }
}
