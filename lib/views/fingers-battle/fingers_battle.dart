import 'package:flutter/material.dart';
import 'package:game_hub/controllers/count_down.dart';
import 'package:game_hub/controllers/fingers_battle.dart';
import 'package:game_hub/modules/text_styles.dart';
import 'package:get/get.dart';

class FingersBattle extends StatelessWidget {
  final controller = Get.find<FingersBattleController>();
  final countDownController = Get.find<CountDownController>();
  @override
  Widget build(context) {
    return Scaffold(
        body: Stack(
      children: [
        Wrap(
          children: [
            Obx(() => _player(Colors.red)),
            Obx(() => _player(Colors.blue))
          ],
        ),
        _countDown()
      ],
    ));
  }

  Widget _player(MaterialColor color) {
    return GestureDetector(
      onTap: () =>
          (color == Colors.red) ? controller.play(1) : controller.play(2),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        width: Get.size.width,
        height: (color == Colors.red)
            ? controller.firstPlayer.value
            : controller.secondPlayer.value,
        color: color,
        child: Center(
          child: Text(
            (color == Colors.red)
                ? '${controller.firstScore.value.toString()}%'
                : '${controller.secondScore.value.toString()}%',
            style: TextStyles.fingersBattlePercentage(),
          ),
        ),
      ),
    );
  }

  Widget _countDown() {
    return Positioned(
      child: Obx(
        () => AnimatedContainer(
          width: countDownController.countingWidth.value,
          height: countDownController.countingHeight.value,
          duration: Duration(milliseconds: 0),
          color: Colors.white.withOpacity(.1),
          child: Center(
            child: Text(
              '${countDownController.countingValue.value}',
              style: TextStyles.countDown(),
            ),
          ),
        ),
      ),
    );
  }
}
