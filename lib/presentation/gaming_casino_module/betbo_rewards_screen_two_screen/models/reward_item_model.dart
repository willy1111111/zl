import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class RewardItemModel {
  Rx<String>? number;
  Rx<String>? prizeAmount;
  Rx<String>? wageredAmount;
  Rx<String>? date;
  Rx<bool>? isClaimed;
  Rx<bool>? isClaimable;
  Rx<Color>? badgeColor;

  RewardItemModel({
    this.number,
    this.prizeAmount,
    this.wageredAmount,
    this.date,
    this.isClaimed,
    this.isClaimable,
    this.badgeColor,
  });
}
