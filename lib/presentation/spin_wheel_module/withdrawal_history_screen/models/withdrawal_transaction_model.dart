import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/app_export.dart';

class WithdrawalTransactionModel {
  Rx<String>? dateTime;
  Rx<String>? amount;
  Rx<String>? status;
  Rx<Color>? statusColor;
  Rx<bool>? showInfoIcon;

  WithdrawalTransactionModel({
    this.dateTime,
    this.amount,
    this.status,
    this.statusColor,
    this.showInfoIcon,
  });
}
