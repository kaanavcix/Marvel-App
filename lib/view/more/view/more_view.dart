import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marvelapp/view/widgets/circle_border.dart';
import 'package:marvelapp/future/init/extension/text_extension.dart';

import '../../../future/init/extension/image_extension.dart';

class MoreView extends StatelessWidget {
  const MoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Align(alignment: Alignment.topCenter, child: profilestack(context)),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text("KAANSRDARRAS",
                style: context
                    .getTextTheme()
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 20,
          ),
          settingsBar(context, "Account",
              onTap: () => context.router.pushNamed("/account")),
          settingsBar(context, "Settings",
              onTap: () => context.router.pushNamed("/settings")),
          settingsBar(
            context,
            "Legal",
          ),
          settingsBar(
            context,
            "Priviacy Settings",
          ),
          settingsBar(
            context,
            "Perental Control",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 8),
            child: Divider(
              color: Colors.white.withOpacity(0.5),
              height: 1,
              thickness: 1,
              endIndent: 1,
            ),
          ),
          settingsBar(context, "SignOut", isButton: false),
        ]),
      ),
    );
  }

  Padding settingsBar(BuildContext context, String text,
      {void Function()? onTap, bool isButton = true}) {
    const edgeInsets = EdgeInsets.all(8.0);
    const edgeInsets2 = EdgeInsets.symmetric(horizontal: 15);
    return Padding(
      padding: edgeInsets + edgeInsets2,
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              text,
              style: context
                  .getTextTheme()
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            isButton
                ? SvgEnum.arrowRight.svgPicture(Colors.white, 24, 24)
                : SizedBox()
          ],
        ),
      ),
    );
  }

  Stack profilestack(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleBorderr(size: 260, opacity: 0.1),
        CircleBorderr(size: 250, opacity: 0.2),
        CircleBorderr(size: 240, opacity: 0.4),
        CircleBorderr(size: 230, opacity: 0.6),
        CircleBorderr(size: 220, opacity: 0.8),
        CircleBorderr(size: 210, opacity: 1),
        CircleAvatar(
          foregroundImage: AssetImage("assets/images/ellipse15.png"),
          radius: 100,
          backgroundColor: Colors.black,
        )
      ],
    );
  }
}



