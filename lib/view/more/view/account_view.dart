import 'package:flutter/material.dart';
import 'package:marvelapp/future/init/extension/text_extension.dart';

import '../../widgets/circle_border.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    const edgeInsets = EdgeInsets.only(bottom: 15);
    const edgeInsets2 =  EdgeInsets.symmetric(horizontal: 15.0);
    return Scaffold(
      appBar: AppBar(
        title: Text("Account"),
      ),
      body: Padding(
        padding: edgeInsets2,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "Who’s Watching?",
              style: context
                  .getTextTheme()
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          const Padding(
            padding: edgeInsets,
          ),
           profilestack(context),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text("KAAN",
                style: context
                    .getTextTheme()
                    .titleMedium!
                    .copyWith(fontWeight: FontWeight.bold)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              unselectedProfile(context,"AHMET"),
              unselectedProfile(context,"MEHMET"),
            ],
          ),
        Container(child: Icon(Icons.add,size: 48,color: Colors.white.withOpacity(0.5)),height: 100,width: 100,
        decoration: BoxDecoration(shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.1)),)
        ]),
      ),
    );
  }

  Column unselectedProfile(BuildContext context,String title) {
    return Column(
      children: [
        CircleAvatar(
          foregroundImage: AssetImage("assets/images/ellipse15.png"),
          radius: 51,
          backgroundColor: Colors.black,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(title,
              style: context
                  .getTextTheme()
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }

  Stack profilestack(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleBorderr(size: 128, opacity: 0.1),
        CircleBorderr(size: 123, opacity: 0.2),
        CircleBorderr(size: 118, opacity: 0.4),
        CircleBorderr(size: 113, opacity: 0.6),
        CircleBorderr(size: 108, opacity: 0.8),
        CircleBorderr(size: 103, opacity: 1),
        CircleAvatar(
          foregroundImage: AssetImage("assets/images/ellipse15.png"),
          radius: 51,
          backgroundColor: Colors.black,
        )
      ],
    );
  }
}
