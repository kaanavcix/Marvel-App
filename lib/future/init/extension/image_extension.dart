import 'package:flutter/material.dart' show Color;
import 'package:flutter_svg/flutter_svg.dart';

enum SvgEnum { google, facebook, logo,home,categories,downloads,more,arrowRight }

extension SvgEnumExtension on SvgEnum {
  String pathTo() {
    return "assets/svg/${this.name}.svg";
  }

  SvgPicture svgPicture(Color color,double height,double width) {
    return SvgPicture.asset(
      "assets/svg/${name}.svg",
      height: height,
      width: width,
    );
  }
}
