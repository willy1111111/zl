import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/app_export.dart';

class VipBonusItemModel {
  Rx<String>? vipIcon;
  Rx<String>? vipLevel;
  Rx<Color>? vipLevelColor;
  Rx<String>? bonusAmount;
  Rx<Color>? bonusAmountColor;
  Rx<String>? status;
  Rx<Color>? backgroundColor;
  Rx<bool>? isReceivable;
  Rx<bool>? isReceived;
  Rx<String>? receivedDate;

  VipBonusItemModel({
    this.vipIcon,
    this.vipLevel,
    this.vipLevelColor,
    this.bonusAmount,
    this.bonusAmountColor,
    this.status,
    this.backgroundColor,
    this.isReceivable,
    this.isReceived,
    this.receivedDate,
  }) {
    vipIcon = vipIcon ?? ''.obs;
    vipLevel = vipLevel ?? ''.obs;
    vipLevelColor = vipLevelColor ?? Color(0xFFFFEB3B).obs;
    bonusAmount = bonusAmount ?? ''.obs;
    bonusAmountColor = bonusAmountColor ?? Color(0xFFFFEB3B).obs;
    status = status ?? 'Undone'.obs;
    backgroundColor = backgroundColor ?? Color(0xFF34383E).obs;
    isReceivable = isReceivable ?? false.obs;
    isReceived = isReceived ?? false.obs;
    receivedDate = receivedDate ?? ''.obs;
  }
}
