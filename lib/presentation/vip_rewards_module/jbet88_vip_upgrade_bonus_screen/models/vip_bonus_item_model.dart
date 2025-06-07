import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/app_export.dart';

/// This class is used for VIP bonus items in the [Jbet88VipUpgradeBonusScreen] screen with GetX.

class VipBonusItemModel {
  Rx<String>? vipIcon;
  Rx<String>? vipLevel;
  Rx<String>? bonusAmount;
  Rx<String>? status;
  Rx<String>? receivedDate;
  Rx<bool>? isReceived;
  Rx<Color>? backgroundColor;

  VipBonusItemModel({
    this.vipIcon,
    this.vipLevel,
    this.bonusAmount,
    this.status,
    this.receivedDate,
    this.isReceived,
    this.backgroundColor,
  });
}
