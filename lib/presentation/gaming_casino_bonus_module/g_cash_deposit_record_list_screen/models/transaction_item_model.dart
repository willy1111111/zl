import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/app_export.dart';

class TransactionItemModel {
  Rx<String>? paymentMethod;
  Rx<String>? dateTime;
  Rx<String>? amount;
  Rx<String>? status;
  Rx<Color>? statusColor;
  Rx<String>? arrowIcon;

  TransactionItemModel({
    this.paymentMethod,
    this.dateTime,
    this.amount,
    this.status,
    this.statusColor,
    this.arrowIcon,
  });
}
