import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/app_export.dart';
import '../widgets/bonus_card_widget.dart';

/// This class is used in the [BonusCardWidget] component with GetX.
class BonusCardModel {
  Rx<String>? title;
  Rx<String>? amount;
  List<Color>? gradientColors;
  double? borderRadius;
  Rx<bool>? isTitleCentered;
  Rx<bool>? isAmountCentered;

  BonusCardModel({
    this.title,
    this.amount,
    this.gradientColors,
    this.borderRadius,
    this.isTitleCentered,
    this.isAmountCentered,
  });
}
