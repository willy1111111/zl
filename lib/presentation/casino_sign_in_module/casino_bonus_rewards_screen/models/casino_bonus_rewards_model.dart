import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

/// This class is used in the [CasinoBonusRewardsScreen] screen with GetX.

class CasinoBonusRewardsModel {
  Rx<String>? backgroundImagePath;
  Rx<String>? congratulationsBannerPath;
  Rx<bool>? isVisible;

  CasinoBonusRewardsModel({
    this.backgroundImagePath,
    this.congratulationsBannerPath,
    this.isVisible,
  });
}
