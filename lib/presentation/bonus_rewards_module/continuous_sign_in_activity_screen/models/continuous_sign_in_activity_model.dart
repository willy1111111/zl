import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class ContinuousSignInActivityModel {
  Rx<String>? appBarTitle;
  Rx<String>? balance;
  Rx<String>? currency;
  Rx<int>? signInCount;
  Rx<String>? totalBonus;
  Rx<int>? currentDay;
  Rx<String>? dailyBonus;
  Rx<String>? extraBonus;
  Rx<String>? activityTime;
  Rx<bool>? showUpdateModal;

  ContinuousSignInActivityModel({
    this.appBarTitle,
    this.balance,
    this.currency,
    this.signInCount,
    this.totalBonus,
    this.currentDay,
    this.dailyBonus,
    this.extraBonus,
    this.activityTime,
    this.showUpdateModal,
  });
}
