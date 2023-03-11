import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvelapp/future/constant/color_constant.dart';

ThemeData darkTheme = ThemeData(
    textTheme: GoogleFonts.interTextTheme(Typography.whiteCupertino),
    primaryColor: ColorConstant.primaryColor,
    applyElevationOverlayColor: true,
    scaffoldBackgroundColor: ColorConstant.scaffoaldBackground,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: ColorConstant.scaffoaldBackground,
    ));
