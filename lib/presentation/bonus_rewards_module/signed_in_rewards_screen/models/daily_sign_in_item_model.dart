import 'package:get/get.dart';

import 'package:flutter/material.dart';
import '../../../../../core/app_export.dart';

class DailySignInItemModel {
  Rx<String>? amount;
  Rx<String>? coinImagePath;
  Rx<String>? checkImagePath;
  Rx<bool>? isCompleted;
  Rx<bool>? isCurrent;
  Rx<Color>? backgroundColor;
  Rx<Color>? borderColor;

  DailySignInItemModel({
    this.amount,
    this.coinImagePath,
    this.checkImagePath,
    this.isCompleted,
    this.isCurrent,
    this.backgroundColor,
    this.borderColor,
  });
}
