import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/app_export.dart';

class TransactionItemModel {
  Rx<String>? paymentMethod;
  Rx<String>? amount;
  Rx<String>? dateTime;
  Rx<String>? status;
  Rx<Color>? statusColor;

  TransactionItemModel({
    this.paymentMethod,
    this.amount,
    this.dateTime,
    this.status,
    this.statusColor,
  });
}
