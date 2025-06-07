import 'package:get/get.dart';

import 'package:flutter/material.dart';
import '../../../../../core/app_export.dart';

class BonusTableRowModel {
  Rx<String>? date;
  Rx<String>? teamId;
  Rx<String>? bonusAmount;
  Rx<Color>? backgroundColor;

  BonusTableRowModel({
    this.date,
    this.teamId,
    this.bonusAmount,
    this.backgroundColor,
  });
}
