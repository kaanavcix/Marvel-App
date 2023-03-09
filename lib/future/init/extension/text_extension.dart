import 'package:flutter/material.dart';

extension textheme on BuildContext {
  TextTheme getTextTheme() {
    return Theme.of(this).textTheme;
  }
}
