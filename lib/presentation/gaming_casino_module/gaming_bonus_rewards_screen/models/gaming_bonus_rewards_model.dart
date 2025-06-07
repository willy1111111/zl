import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class GamingBonusRewardsModel {
  Rx<String>? congratulationsText;
  Rx<String>? celebrationIconPath;
  Rx<String>? backgroundImagePath;

  GamingBonusRewardsModel({
    this.congratulationsText,
    this.celebrationIconPath,
    this.backgroundImagePath,
  });
}
