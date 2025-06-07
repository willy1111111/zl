import 'package:get/get.dart';
import '../../../../core/app_export.dart';

/// This class is used in the [VipRewardsBenefitsScreen] screen with GetX.

class VipRewardsBenefitsModel {
  Rx<String>? title;
  Rx<String>? amount;
  Rx<bool>? isLoading;

  VipRewardsBenefitsModel({
    this.title,
    this.amount,
    this.isLoading,
  });
}
