import 'package:flutter/material.dart' show Color;
import 'package:flutter_svg/flutter_svg.dart';

enum SvgEnum { google, facebook, logo,home,categories,downloads,more }

extension SvgEnumExtension on SvgEnum {
  String pathTo() {
    return "assets/svg/${this.name}.svg";
  }

  SvgPicture svgPicture(Color color) {
    return SvgPicture.asset(
      "assets/svg/${this.name}.svg",
      height: 85,
      width: 144,
    );
  }
}
