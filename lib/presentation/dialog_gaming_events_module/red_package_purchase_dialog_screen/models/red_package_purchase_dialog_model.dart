import 'package:get/get.dart';

import '../../../core/app_export.dart';

class RedPackagePurchaseDialogModel {
  Rx<String>? logoImagePath;
  Rx<String>? balanceAmount;
  Rx<String>? bannerImagePath;
  Rx<String>? notificationText;
  Rx<String>? packagePrice;
  Rx<bool>? isDialogVisible;

  RedPackagePurchaseDialogModel({
    this.logoImagePath,
    this.balanceAmount,
    this.bannerImagePath,
    this.notificationText,
    this.packagePrice,
    this.isDialogVisible,
  });
}
