import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

/// This class is used in the [SignInReSignScreen] screen with GetX.

class SignInReSignModel {
  Rx<String>? signInCount;
  Rx<String>? totalBonus;
  Rx<String>? currentDayTitle;
  Rx<String>? dailyBonus;
  Rx<String>? extraBonus;
  Rx<String>? bonusAmount;
  Rx<String>? depositInfo;
  Rx<String>? activityTime;
  Rx<String>? remainingReSignments;

  SignInReSignModel({
    this.signInCount,
    this.totalBonus,
    this.currentDayTitle,
    this.dailyBonus,
    this.extraBonus,
    this.bonusAmount,
    this.depositInfo,
    this.activityTime,
    this.remainingReSignments,
  });
}
