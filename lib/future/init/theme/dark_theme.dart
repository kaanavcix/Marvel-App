import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvelapp/future/constant/color_constant.dart';

ThemeData darkTheme = ThemeData(
  textTheme: GoogleFonts.interTextTheme(Typography.whiteCupertino),
  primaryColor: ColorConstant.primaryColor,
  applyElevationOverlayColor: true,
  scaffoldBackgroundColor: ColorConstant.scaffoaldBackground,
  appBarTheme: AppBarTheme(
    centerTitle: true,
    titleTextStyle:
        GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.bold),
    elevation: 0,
    backgroundColor: ColorConstant.scaffoaldBackground,
  ),
);
