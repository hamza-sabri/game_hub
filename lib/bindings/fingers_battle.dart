import 'package:game_hub/controllers/count_down.dart';
import 'package:game_hub/controllers/fingers_battle.dart';
import 'package:get/get.dart';

class FingersBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(FingersBattleController());
    Get.put(CountDownController(3));
  }
}
