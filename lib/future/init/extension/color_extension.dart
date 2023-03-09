import 'package:flutter/material.dart';

extension ColorExtension on BuildContext {
  Color getPrimaryColor() {
    return Theme.of(this).primaryColor;
  }

  ColorScheme getColor() {
    return Theme.of(this).colorScheme;
  }
}
