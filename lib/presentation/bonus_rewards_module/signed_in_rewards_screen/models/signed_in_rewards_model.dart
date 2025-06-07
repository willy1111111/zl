import 'package:get/get.dart';

import '../../../../../core/app_export.dart';

class SignedInRewardsModel {
  Rx<String>? currentDay;
  Rx<String>? totalSignIns;
  Rx<String>? totalBonus;
  Rx<String>? activityTime;
  Rx<bool>? canReSign;

  SignedInRewardsModel({
    this.currentDay,
    this.totalSignIns,
    this.totalBonus,
    this.activityTime,
    this.canReSign,
  });
}
