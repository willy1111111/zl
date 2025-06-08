import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/app_export.dart';

class TransactionItemModel {
  Rx<String>? method;
  Rx<String>? datetime;
  Rx<String>? amount;
  Rx<String>? status;
  Rx<Color>? statusColor;

  TransactionItemModel({
    this.method,
    this.datetime,
    this.amount,
    this.status,
    this.statusColor,
  });
}
