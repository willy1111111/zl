import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/app_export.dart';

class MemberModel {
  Rx<String>? id;
  Rx<bool>? isNew;
  RxList<BadgeModel>? badges;
  Rx<String>? registrationDate;
  Rx<String>? depositAmount;
  Rx<String>? validBet;
  Rx<String>? withdrawalAmount;
  Rx<String>? phoneVerification;
  Rx<bool>? isVerified;

  MemberModel({
    this.id,
    this.isNew,
    this.badges,
    this.registrationDate,
    this.depositAmount,
    this.validBet,
    this.withdrawalAmount,
    this.phoneVerification,
    this.isVerified,
  });
}

class BadgeModel {
  Rx<String>? text;
  Rx<Color>? color;

  BadgeModel({
    this.text,
    this.color,
  });
}
