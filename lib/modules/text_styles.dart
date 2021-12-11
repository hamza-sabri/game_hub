import 'package:flutter/material.dart';

class TextStyles {
  static TextStyle gameNameStyle(double cardDimension) {
    return TextStyle(
      color: Colors.white,
      fontSize: cardDimension / 10,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle fingersBattlePercentage() {
    return TextStyle(
      color: Colors.white,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle countDown() {
    return TextStyle(
      color: Colors.white,
      fontSize: 60,
      fontWeight: FontWeight.bold,
    );
  }
}
