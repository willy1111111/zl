import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/app_export.dart';
import '../widgets/transaction_item_widget.dart';

/// This class is used in the [TransactionItemWidget] component with GetX.

class TransactionItemModel {
  // Observable variables for reactive state management
  Rx<String>? method;
  Rx<String>? dateTime;
  Rx<String>? amount;
  Rx<String>? status;
  Rx<Color>? statusColor;

  // Constructor with optional parameters
  TransactionItemModel({
    this.method,
    this.dateTime,
    this.amount,
    this.status,
    this.statusColor,
  });
}
