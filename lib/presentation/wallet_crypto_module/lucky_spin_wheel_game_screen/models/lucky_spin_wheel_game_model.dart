import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [lucky_spin_wheel_game_screen] screen with GetX.

class LuckySpinWheelGameModel {
  Rx<String> prizeAmount = '₱500'.obs;
  Rx<String> centerNumber = '1'.obs;
  Rx<bool> isSpinning = false.obs;
  Rx<double> wheelRotation = 0.0.obs;

  LuckySpinWheelGameModel();
}
