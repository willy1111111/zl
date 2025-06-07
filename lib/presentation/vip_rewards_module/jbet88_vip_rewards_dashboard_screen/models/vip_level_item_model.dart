import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class VipLevelItemModel {
  Rx<String>? iconPath;
  Rx<String>? vipLevel;
  Rx<String>? bonusAmount;
  Rx<bool>? isAvailable;
  Rx<bool>? isReceived;
  Rx<String>? receivedDate;
  Rx<Color>? backgroundColor;
  Rx<Color>? levelColor;
  Rx<Color>? bonusColor;

  VipLevelItemModel({
    this.iconPath,
    this.vipLevel,
    this.bonusAmount,
    this.isAvailable,
    this.isReceived,
    this.receivedDate,
    this.backgroundColor,
    this.levelColor,
    this.bonusColor,
  });
}
