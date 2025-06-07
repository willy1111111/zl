import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class FourthDaySignInModel {
  Rx<String>? statsCardSignInCount;
  Rx<String>? statsCardTotalBonus;
  Rx<String>? currentDay;
  Rx<String>? dailyBonus;
  Rx<String>? extraBonus;
  Rx<String>? activityTimeRemaining;

  FourthDaySignInModel({
    this.statsCardSignInCount,
    this.statsCardTotalBonus,
    this.currentDay,
    this.dailyBonus,
    this.extraBonus,
    this.activityTimeRemaining,
  }) {
    statsCardSignInCount = statsCardSignInCount ?? '24'.obs;
    statsCardTotalBonus = statsCardTotalBonus ?? '₱ 0.20'.obs;
    currentDay = currentDay ?? 'Day 4'.obs;
    dailyBonus = dailyBonus ?? '₱ 0.20'.obs;
    extraBonus = extraBonus ?? '₱0.20'.obs;
    activityTimeRemaining = activityTimeRemaining ?? '29Day 23:59:59'.obs;
  }
}
