import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/app_export.dart';
import './deposit_entry_model.dart';

class VipCardModel {
  Rx<String>? vipLevel;
  Rx<String>? maxAmount;
  Rx<String>? backgroundImage;
  Rx<String>? iconImage;
  Rx<bool>? hasSpecialIndicator;
  Rx<Color>? specialIndicatorColor;
  RxList<DepositEntryModel>? depositEntries;

  VipCardModel({
    this.vipLevel,
    this.maxAmount,
    this.backgroundImage,
    this.iconImage,
    this.hasSpecialIndicator,
    this.specialIndicatorColor,
    this.depositEntries,
  });
}
