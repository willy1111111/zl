import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class DailySignInRewardsModel {
  Rx<String>? signInCount;
  Rx<String>? totalBonus;
  Rx<String>? currentDayTitle;

  DailySignInRewardsModel({
    this.signInCount,
    this.totalBonus,
    this.currentDayTitle,
  });
}
