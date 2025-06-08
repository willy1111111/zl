import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/app_export.dart';
import '../widgets/transaction_item_widget.dart';

/// This class is used in the [TransactionItemWidget] component with GetX.
class TransactionItemModel {
  Rx<String>? paymentMethod;
  Rx<String>? date;
  Rx<String>? amount;
  Rx<String>? status;
  Rx<Color>? statusColor;

  TransactionItemModel({
    this.paymentMethod,
    this.date,
    this.amount,
    this.status,
    this.statusColor,
  });
}
