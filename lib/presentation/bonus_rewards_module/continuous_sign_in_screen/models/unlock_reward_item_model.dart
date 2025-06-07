import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class UnlockRewardItemModel {
  Rx<String>? backgroundImage;
  Rx<String>? iconImage;
  Rx<String>? rewardText;

  UnlockRewardItemModel({
    this.backgroundImage,
    this.iconImage,
    this.rewardText,
  });
}
