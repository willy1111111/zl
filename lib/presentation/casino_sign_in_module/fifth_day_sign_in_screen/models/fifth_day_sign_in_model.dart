import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class FifthDaySignInModel {
  Rx<String>? totalSignIns;
  Rx<String>? totalBonus;
  Rx<String>? currentDay;
  Rx<String>? dailyBonus;
  Rx<String>? extraBonus;
  Rx<String>? activityTime;

  FifthDaySignInModel({
    this.totalSignIns,
    this.totalBonus,
    this.currentDay,
    this.dailyBonus,
    this.extraBonus,
    this.activityTime,
  });
}
