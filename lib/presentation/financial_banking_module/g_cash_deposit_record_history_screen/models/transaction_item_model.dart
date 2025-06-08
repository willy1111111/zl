import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used for transaction items in the [GCashDepositRecordHistoryScreen] screen with GetX.

class TransactionItemModel {
  Rx<String>? method;
  Rx<String>? dateTime;
  Rx<String>? amount;
  Rx<String>? status;
  Rx<Color>? statusColor;
  Rx<String>? id;

  TransactionItemModel({
    this.method,
    this.dateTime,
    this.amount,
    this.status,
    this.statusColor,
    this.id,
  });
}
