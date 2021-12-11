import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FingersBattleController extends GetxController {
  final firstPlayer = (Get.size.height / 2).obs;
  final secondPlayer = (Get.size.height / 2).obs;

  final firstScore = 50.obs;
  final secondScore = 50.obs;

  final WINNER = Get.size.height;
  final stepSize = (Get.size.height / 100);

  Future<void> play(int player) async {
    if (player == 1) {
      secondPlayer.value = max(secondPlayer.value - stepSize, 0);
      firstPlayer.value = firstPlayer.value + stepSize;
      firstScore.value++;
      secondScore.value--;
    } else {
      firstPlayer.value = max(firstPlayer.value - stepSize, 0);
      secondPlayer.value = secondPlayer.value + stepSize;
      firstScore.value--;
      secondScore.value++;
    }
    if (firstScore.value == 100 || secondScore.value == 100) {
      showWinner();
    }
  }

  void showWinner() {
    Get.defaultDialog(
        title: 'The winner in the epic war is'.tr,
        content: Container(
          width: 50,
          height: 50,
          color: (secondPlayer.value < firstPlayer.value)
              ? Colors.red
              : Colors.blue,
        ),
        textConfirm: 'Play again!'.tr,
        confirmTextColor: Colors.white,
        barrierDismissible: false,
        onConfirm: () {
          _resetPlayers();
          Get.close(1);
        });
  }

  void _resetPlayers() {
    firstPlayer.value = (Get.size.height / 2);
    secondPlayer.value = (Get.size.height / 2);
    firstScore.value = 50;
    secondScore.value = 50;
  }
}
