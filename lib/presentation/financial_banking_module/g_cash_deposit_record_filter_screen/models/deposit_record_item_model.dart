import 'package:get/get.dart';

import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class DepositRecordItemModel {
  Rx<String>? paymentMethod;
  Rx<String>? dateTime;
  Rx<String>? amount;
  Rx<String>? status;
  Rx<Color>? statusColor;

  DepositRecordItemModel({
    this.paymentMethod,
    this.dateTime,
    this.amount,
    this.status,
    this.statusColor,
  });
}
