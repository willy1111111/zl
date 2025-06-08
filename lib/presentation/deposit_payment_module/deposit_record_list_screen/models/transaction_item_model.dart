import 'package:get/get.dart';

import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

/// This class is used for transaction items in the [DepositRecordListScreen] screen with GetX.

class TransactionItemModel {
  Rx<String>? method;
  Rx<String>? dateTime;
  Rx<String>? amount;
  Rx<String>? status;
  Rx<Color>? statusColor;

  TransactionItemModel({
    this.method,
    this.dateTime,
    this.amount,
    this.status,
    this.statusColor,
  });
}
