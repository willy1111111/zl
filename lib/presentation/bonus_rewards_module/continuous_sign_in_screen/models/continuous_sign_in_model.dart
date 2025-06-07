import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class ContinuousSignInModel {
  Rx<String>? numberOfSignIns;
  Rx<String>? receivedTotalBonus;
  Rx<String>? currentDay;
  Rx<String>? bonusAmount;
  Rx<String>? extraAmount;
  Rx<String>? activityTime;

  ContinuousSignInModel({
    this.numberOfSignIns,
    this.receivedTotalBonus,
    this.currentDay,
    this.bonusAmount,
    this.extraAmount,
    this.activityTime,
  });
}
