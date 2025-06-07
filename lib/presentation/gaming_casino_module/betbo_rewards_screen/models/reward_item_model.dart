import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class RewardItemModel {
  Rx<String>? numberBadge;
  Rx<String>? prizeAmount;
  Rx<String>? wageredAmount;
  Rx<String>? date;
  RxBool? isClaimed;
  RxBool? isClaimable;
  Rx<Color>? badgeColor;

  RewardItemModel({
    this.numberBadge,
    this.prizeAmount,
    this.wageredAmount,
    this.date,
    this.isClaimed,
    this.isClaimable,
    this.badgeColor,
  });
}
