import 'package:flutter/material.dart';

class TextStyles {
  static TextStyle gameNameStyle(double cardDimension) {
    return TextStyle(
        color: Colors.white,
        fontSize: cardDimension / 10,
        fontWeight: FontWeight.bold);
  }
}
