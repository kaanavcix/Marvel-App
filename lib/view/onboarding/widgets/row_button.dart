import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marvelapp/future/init/extension/text_extension.dart';

class RowButton extends StatelessWidget {
  const RowButton({
    super.key,
    required this.path,
    required this.title,
  });

  final String path;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          SvgPicture.asset(
            "assets/svg/$path.svg",
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              title,
              style: context.getTextTheme().bodyMedium!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 14),
            ),
          )
        ]),
      ),
    );
  }
}