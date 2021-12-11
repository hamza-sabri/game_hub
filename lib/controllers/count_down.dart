import 'package:get/get.dart';

class CountDownController extends GetxController {
  final RxInt countingValue = 3.obs;
  final countingWidth = Get.size.width.obs;
  final countingHeight = Get.size.height.obs;

  CountDownController(int countFrom) {
    countingValue.value = countFrom;
    startCounting();
  }

  void startCounting() async {
    // await _player.setFilePath('lib/ass ets/spacetoon.mp3');
    // _player.play();
    while (countingValue.value > 0) {
      await 1.delay();
      countingValue.value--;
    }
    countingWidth.value = 0;
    countingHeight.value = 0;
  }
}
