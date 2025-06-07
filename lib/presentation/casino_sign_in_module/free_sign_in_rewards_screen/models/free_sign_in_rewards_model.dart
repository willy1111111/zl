import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class FreeSignInRewardsModel {
  Rx<String>? signInDay;
  Rx<String>? totalSignIns;
  Rx<String>? totalBonus;
  Rx<String>? currentBonus;
  Rx<String>? extraBonus;
  Rx<String>? bonusAmount;
  Rx<int>? remainingReSignments;

  FreeSignInRewardsModel({
    this.signInDay,
    this.totalSignIns,
    this.totalBonus,
    this.currentBonus,
    this.extraBonus,
    this.bonusAmount,
    this.remainingReSignments,
  });
}
