import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class ContinuousSignInMakeupModel {
  Rx<String>? numberOfSignIns;
  Rx<String>? totalBonus;
  Rx<String>? currentDay;
  Rx<String>? activityTime;
  Rx<String>? balance;

  ContinuousSignInMakeupModel({
    this.numberOfSignIns,
    this.totalBonus,
    this.currentDay,
    this.activityTime,
    this.balance,
  });
}
