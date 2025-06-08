import 'package:get/get.dart';
import '../../../core/app_export.dart';

class VipLevelModel {
  Rx<String>? level;
  Rx<String>? iconPath;
  Rx<String>? withdrawalFee;
  Rx<String>? numberOfWithdrawals;
  Rx<String>? withdrawalLimit;

  VipLevelModel({
    this.level,
    this.iconPath,
    this.withdrawalFee,
    this.numberOfWithdrawals,
    this.withdrawalLimit,
  });
}
